## 1.Apple Pay

You can use a new class, PKPaymentButton, to create buttons that initiate Apple Pay purchases. These buttons are appropriately styled with the Apple Pay logo.

Apple Pay now supports different shipping types, such as “shipping,” “delivery,” “pickup from store,” and “pickup from customer.” You can also now request the user’s name without requesting their address.

For more information on Apple Pay, see Apple Pay Programming Guide; to learn more about PKPaymentButton, see PassKit Framework Reference.

您可以使用新的类PKPaymentButton创建启动Apple Pay购买的按钮。 这些按钮适合使用Apple Pay标志。

Apple Pay现在支持不同的运送类型，例如“运送”，“送货”，“从商店取货”和“从客户处取货”。您现在还可以要求用户的姓名而不要求他们的地址。

有关Apple Pay的更多信息，请参阅Apple Pay Programming Guide 要了解有关PKPaymentButton的更多信息，请参阅PassKit Framework Reference。

## 2.Metal

Apps that use Metal now have additional ways to manipulate shader buffers and introspect vertex attribute types:

MTLComputeCommandEncoder and MTLRenderCommandEncoder objects include new methods for copying data directly to a shader’s buffer table and for relocating the initial offset for using data in an already bound buffer. Use these options to attach small, one-time-use data buffers or reconfigure attached buffers without needing to create or re-create a MTLBuffer object.

MTLVertexAttribute objects now include an attributeType property for introspecting the types of attributes declared in Metal shader source code.

For more information on Metal, see Metal Programming Guide, Metal Framework Reference, and Metal Shading Language Guide.

使用Metal的应用程序现在可以使用其他方式来处理着色器缓冲区和内省顶点属性类型：

MTLComputeCommandEncoder和MTLRenderCommandEncoder对象包括用于将数据直接复制到着色器的缓冲表并重新定位初始偏移以用于在已经绑定的缓冲区中使用数据的新方法。 使用这些选项可附加小型一次性数据缓冲区或重新配置连接的缓冲区，而无需创建或重新创建MTLBuffer对象。

MTLVertexAttribute对象现在包含一个attributeType属性，用于内省Metal着色器源代码中声明的属性类型。

有关Metal的更多信息，请参见“金属编程指南”，“金属框架参考”和“金属遮蔽语言指南”。


