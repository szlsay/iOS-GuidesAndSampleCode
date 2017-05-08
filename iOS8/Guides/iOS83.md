## 1.Apple Pay

You can use a new class, PKPaymentButton, to create buttons that initiate Apple Pay purchases. These buttons are appropriately styled with the Apple Pay logo.

Apple Pay now supports different shipping types, such as “shipping,” “delivery,” “pickup from store,” and “pickup from customer.” You can also now request the user’s name without requesting their address.

For more information on Apple Pay, see Apple Pay Programming Guide; to learn more about PKPaymentButton, see PassKit Framework Reference.

## 2.Metal

Apps that use Metal now have additional ways to manipulate shader buffers and introspect vertex attribute types:

MTLComputeCommandEncoder and MTLRenderCommandEncoder objects include new methods for copying data directly to a shader’s buffer table and for relocating the initial offset for using data in an already bound buffer. Use these options to attach small, one-time-use data buffers or reconfigure attached buffers without needing to create or re-create a MTLBuffer object.

MTLVertexAttribute objects now include an attributeType property for introspecting the types of attributes declared in Metal shader source code.

For more information on Metal, see Metal Programming Guide, Metal Framework Reference, and Metal Shading Language Guide.
