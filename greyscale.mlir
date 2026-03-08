module @module {
  func.func @main(%arg0: !torch.vtensor<[1,1,100,100],f32>) -> !torch.vtensor<[50,50],f32> attributes {torch.assume_strict_symbolic_shapes} {
    %0 = torch.vtensor.literal(dense_resource<torch_tensor_1_1_2_2_torch.float32> : tensor<1x1x2x2xf32>) : !torch.vtensor<[1,1,2,2],f32>
    %none = torch.constant.none
    %int2 = torch.constant.int 2
    %int2_0 = torch.constant.int 2
    %1 = torch.prim.ListConstruct %int2, %int2_0 : (!torch.int, !torch.int) -> !torch.list<int>
    %int0 = torch.constant.int 0
    %int0_1 = torch.constant.int 0
    %2 = torch.prim.ListConstruct %int0, %int0_1 : (!torch.int, !torch.int) -> !torch.list<int>
    %int1 = torch.constant.int 1
    %int1_2 = torch.constant.int 1
    %3 = torch.prim.ListConstruct %int1, %int1_2 : (!torch.int, !torch.int) -> !torch.list<int>
    %int1_3 = torch.constant.int 1
    %4 = torch.aten.conv2d %arg0, %0, %none, %1, %2, %3, %int1_3 : !torch.vtensor<[1,1,100,100],f32>, !torch.vtensor<[1,1,2,2],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.int -> !torch.vtensor<[1,1,50,50],f32>
    %int0_4 = torch.constant.int 0
    %5 = torch.aten.squeeze.dim %4, %int0_4 : !torch.vtensor<[1,1,50,50],f32>, !torch.int -> !torch.vtensor<[1,50,50],f32>
    %int0_5 = torch.constant.int 0
    %6 = torch.aten.squeeze.dim %5, %int0_5 : !torch.vtensor<[1,50,50],f32>, !torch.int -> !torch.vtensor<[50,50],f32>
    return %6 : !torch.vtensor<[50,50],f32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      torch_tensor_1_1_2_2_torch.float32: "0x040000008716993EA245963ED578E93DA245963E"
    }
  }
#-}
