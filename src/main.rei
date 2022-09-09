use arcen::common::*

fn main() {
    arcen::render(app)
}

fn app(children: ArcenProps) -> Component {
    @arcen {
        ArcenPage[...children]
    }
}
