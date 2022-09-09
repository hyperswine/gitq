use arcen::common::Component
use arcen::components::Box,Heading,Text,Flex

export fn NavBar() -> Component {
    let (dark_mode, set_dark_mode) = use_state(false)

    let handle_click = () => set_dark_mode(!dark_mode)

    @arcen {
        Box[pos="relative" width="100%"] {
            Heading[width="50%"] { "Git Q" }
            // nav
            Flex[dir="row"] {
                Link[to="/index"] { "Home" }
                Link[to="/about"] { "About" }
                Link[to="/settings"] { "Settings" }
            }
            // quick icons like dark mode
            Icon[src={dark_mode? "/assets/images/moon": "/assets/images/sun"} on_click={handle_click}]
        }
    }
}
