lbl_8014E6C8:
/* 8014E6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014E6CC  7C 08 02 A6 */	mflr r0
/* 8014E6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014E6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014E6D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8014E6DC  7C 7F 1B 78 */	mr r31, r3
/* 8014E6E0  4B EC A4 85 */	bl __ct__10fopAc_ac_cFv
/* 8014E6E4  3C 60 80 3B */	lis r3, __vt__11daBaseNpc_c@ha
/* 8014E6E8  38 03 39 AC */	addi r0, r3, __vt__11daBaseNpc_c@l
/* 8014E6EC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8014E6F0  3B DF 05 6C */	addi r30, r31, 0x56c
/* 8014E6F4  7F C3 F3 78 */	mr r3, r30
/* 8014E6F8  4B F2 79 A9 */	bl __ct__9dBgS_AcchFv
/* 8014E6FC  3C 60 80 3B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8014E700  38 63 35 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8014E704  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8014E708  38 03 00 0C */	addi r0, r3, 0xc
/* 8014E70C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8014E710  38 03 00 18 */	addi r0, r3, 0x18
/* 8014E714  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8014E718  38 7E 00 14 */	addi r3, r30, 0x14
/* 8014E71C  4B F2 A7 4D */	bl SetObj__16dBgS_PolyPassChkFv
/* 8014E720  38 7F 07 58 */	addi r3, r31, 0x758
/* 8014E724  48 17 1C A5 */	bl __ct__10Z2CreatureFv
/* 8014E728  3B DF 07 EC */	addi r30, r31, 0x7ec
/* 8014E72C  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8014E730  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8014E734  90 1F 07 EC */	stw r0, 0x7ec(r31)
/* 8014E738  7F C3 F3 78 */	mr r3, r30
/* 8014E73C  38 80 00 00 */	li r4, 0
/* 8014E740  48 1D 9C BD */	bl init__12J3DFrameCtrlFs
/* 8014E744  38 00 00 00 */	li r0, 0
/* 8014E748  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8014E74C  3B DF 08 08 */	addi r30, r31, 0x808
/* 8014E750  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8014E754  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8014E758  90 1F 08 08 */	stw r0, 0x808(r31)
/* 8014E75C  7F C3 F3 78 */	mr r3, r30
/* 8014E760  38 80 00 00 */	li r4, 0
/* 8014E764  48 1D 9C 99 */	bl init__12J3DFrameCtrlFs
/* 8014E768  38 00 00 00 */	li r0, 0
/* 8014E76C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8014E770  3B DF 08 20 */	addi r30, r31, 0x820
/* 8014E774  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8014E778  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8014E77C  90 1F 08 20 */	stw r0, 0x820(r31)
/* 8014E780  7F C3 F3 78 */	mr r3, r30
/* 8014E784  38 80 00 00 */	li r4, 0
/* 8014E788  48 1D 9C 75 */	bl init__12J3DFrameCtrlFs
/* 8014E78C  38 00 00 00 */	li r0, 0
/* 8014E790  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8014E794  38 7F 08 4C */	addi r3, r31, 0x84c
/* 8014E798  48 0F B7 69 */	bl __ct__10dMsgFlow_cFv
/* 8014E79C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8014E7A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8014E7A4  90 1F 08 B4 */	stw r0, 0x8b4(r31)
/* 8014E7A8  38 7F 08 B8 */	addi r3, r31, 0x8b8
/* 8014E7AC  4B F3 4F B5 */	bl __ct__10dCcD_GSttsFv
/* 8014E7B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8014E7B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8014E7B8  90 7F 08 B4 */	stw r3, 0x8b4(r31)
/* 8014E7BC  38 03 00 20 */	addi r0, r3, 0x20
/* 8014E7C0  90 1F 08 B8 */	stw r0, 0x8b8(r31)
/* 8014E7C4  38 7F 08 D8 */	addi r3, r31, 0x8d8
/* 8014E7C8  4B F2 76 E5 */	bl __ct__12dBgS_AcchCirFv
/* 8014E7CC  3C 60 80 3B */	lis r3, __vt__18daBaseNpc_lookat_c@ha
/* 8014E7D0  38 03 3A 14 */	addi r0, r3, __vt__18daBaseNpc_lookat_c@l
/* 8014E7D4  90 1F 09 20 */	stw r0, 0x920(r31)
/* 8014E7D8  38 7F 09 24 */	addi r3, r31, 0x924
/* 8014E7DC  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8014E7E0  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 8014E7E4  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 8014E7E8  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 8014E7EC  38 C0 00 06 */	li r6, 6
/* 8014E7F0  38 E0 00 04 */	li r7, 4
/* 8014E7F4  48 21 35 6D */	bl __construct_array
/* 8014E7F8  38 7F 09 3C */	addi r3, r31, 0x93c
/* 8014E7FC  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8014E800  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 8014E804  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 8014E808  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 8014E80C  38 C0 00 06 */	li r6, 6
/* 8014E810  38 E0 00 04 */	li r7, 4
/* 8014E814  48 21 35 4D */	bl __construct_array
/* 8014E818  38 7F 09 54 */	addi r3, r31, 0x954
/* 8014E81C  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha
/* 8014E820  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 8014E824  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha
/* 8014E828  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 8014E82C  38 C0 00 0C */	li r6, 0xc
/* 8014E830  38 E0 00 04 */	li r7, 4
/* 8014E834  48 21 35 2D */	bl __construct_array
/* 8014E838  38 7F 09 84 */	addi r3, r31, 0x984
/* 8014E83C  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8014E840  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 8014E844  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 8014E848  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 8014E84C  38 C0 00 06 */	li r6, 6
/* 8014E850  38 E0 00 04 */	li r7, 4
/* 8014E854  48 21 35 0D */	bl __construct_array
/* 8014E858  38 7F 09 9C */	addi r3, r31, 0x99c
/* 8014E85C  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 8014E860  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 8014E864  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 8014E868  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 8014E86C  38 C0 00 06 */	li r6, 6
/* 8014E870  38 E0 00 04 */	li r7, 4
/* 8014E874  48 21 34 ED */	bl __construct_array
/* 8014E878  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 8014E87C  48 11 93 A1 */	bl __ct__11cBgS_GndChkFv
/* 8014E880  7F E3 FB 78 */	mr r3, r31
/* 8014E884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014E888  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014E88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014E890  7C 08 03 A6 */	mtlr r0
/* 8014E894  38 21 00 10 */	addi r1, r1, 0x10
/* 8014E898  4E 80 00 20 */	blr 
