module GstreamerCore = Gstreamer.Core;
module GstEditingServicesCore = GstEditingServices.Core_raw;
open GstEditingServices;

/* Ideally we should check if the objects are usable and work as expected. For now we just instantiate */

GstreamerCore.init(None, None);
GstEditingServicesCore.init();
let effect = Effect.create("rotate");
