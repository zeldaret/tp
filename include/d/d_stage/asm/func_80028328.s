/* 80028328 00025268  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002832C 0002526C  7C 08 02 A6 */ mflr r0
/* 80028330 00025270  90 01 00 14 */ stw r0, 0x14(r1)
/* 80028334 00025274  3C 60 80 3F */ lis r3, lbl_803F6094@ha
/* 80028338 00025278  38 63 60 94 */ addi r3, r3, lbl_803F6094@l
/*.global dStage_roomStatus_c_NS_dtor*/
/* 8002833C 0002527C  3C 80 80 03 */ lis r4, dStage_roomStatus_c_NS_dtor@ha
/*.global dStage_roomStatus_c_NS_dtor*/
/* 80028340 00025280  38 84 83 60 */ addi r4, r4, dStage_roomStatus_c_NS_dtor@l
/* 80028344 00025284  38 A0 04 04 */ li r5, 0x404
/* 80028348 00025288  38 C0 00 40 */ li r6, 0x40
/* 8002834C 0002528C  48 33 99 9D */ bl func_80361CE8
/* 80028350 00025290  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80028354 00025294  7C 08 03 A6 */ mtlr r0
/* 80028358 00025298  38 21 00 10 */ addi r1, r1, 0x10
/* 8002835C 0002529C  4E 80 00 20 */ blr