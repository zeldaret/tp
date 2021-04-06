lbl_80B7956C:
/* 80B7956C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B79570  7C 08 02 A6 */	mflr r0
/* 80B79574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B79578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7957C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B79580  7C 7F 1B 78 */	mr r31, r3
/* 80B79584  48 00 5D B1 */	bl __ct__8daNpcF_cFv
/* 80B79588  3C 60 80 B9 */	lis r3, __vt__11daNpc_zrA_c@ha /* 0x80B8D944@ha */
/* 80B7958C  38 03 D9 44 */	addi r0, r3, __vt__11daNpc_zrA_c@l /* 0x80B8D944@l */
/* 80B79590  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B79594  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80B79598  4B 74 6E 31 */	bl __ct__10Z2CreatureFv
/* 80B7959C  3B DF 0B E8 */	addi r30, r31, 0xbe8
/* 80B795A0  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B795A4  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B795A8  90 1F 0B E8 */	stw r0, 0xbe8(r31)
/* 80B795AC  7F C3 F3 78 */	mr r3, r30
/* 80B795B0  38 80 00 00 */	li r4, 0
/* 80B795B4  4B 7A EE 49 */	bl init__12J3DFrameCtrlFs
/* 80B795B8  38 00 00 00 */	li r0, 0
/* 80B795BC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B795C0  3B DF 0C 00 */	addi r30, r31, 0xc00
/* 80B795C4  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B795C8  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B795CC  90 1F 0C 00 */	stw r0, 0xc00(r31)
/* 80B795D0  7F C3 F3 78 */	mr r3, r30
/* 80B795D4  38 80 00 00 */	li r4, 0
/* 80B795D8  4B 7A EE 25 */	bl init__12J3DFrameCtrlFs
/* 80B795DC  38 00 00 00 */	li r0, 0
/* 80B795E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B795E4  3B DF 0C 18 */	addi r30, r31, 0xc18
/* 80B795E8  3C 60 80 B9 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80B8DA1C@ha */
/* 80B795EC  38 03 DA 1C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80B8DA1C@l */
/* 80B795F0  90 1F 12 44 */	stw r0, 0x1244(r31)
/* 80B795F4  3C 60 80 B9 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80B8DA10@ha */
/* 80B795F8  38 03 DA 10 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80B8DA10@l */
/* 80B795FC  90 1F 12 40 */	stw r0, 0x1240(r31)
/* 80B79600  38 7E 00 20 */	addi r3, r30, 0x20
/* 80B79604  38 80 00 00 */	li r4, 0
/* 80B79608  38 A0 00 00 */	li r5, 0
/* 80B7960C  4B 5D 72 65 */	bl initialize__16daNpcF_SPCurve_cFP5dPathi
/* 80B79610  7F C3 F3 78 */	mr r3, r30
/* 80B79614  4B 5D 72 ED */	bl initialize__13daNpcF_Path_cFv
/* 80B79618  3C 60 80 B9 */	lis r3, __vt__16daNpc_zrA_Path_c@ha /* 0x80B8DA04@ha */
/* 80B7961C  38 03 DA 04 */	addi r0, r3, __vt__16daNpc_zrA_Path_c@l /* 0x80B8DA04@l */
/* 80B79620  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 80B79624  3B DF 12 48 */	addi r30, r31, 0x1248
/* 80B79628  3C 60 80 B9 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B8D9F8@ha */
/* 80B7962C  38 03 D9 F8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B8D9F8@l */
/* 80B79630  90 1F 12 E0 */	stw r0, 0x12e0(r31)
/* 80B79634  7F C3 F3 78 */	mr r3, r30
/* 80B79638  3C 80 80 B8 */	lis r4, __ct__4cXyzFv@ha /* 0x80B7EF84@ha */
/* 80B7963C  38 84 EF 84 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B7EF84@l */
/* 80B79640  3C A0 80 B8 */	lis r5, __dt__4cXyzFv@ha /* 0x80B78730@ha */
/* 80B79644  38 A5 87 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B78730@l */
/* 80B79648  38 C0 00 0C */	li r6, 0xc
/* 80B7964C  38 E0 00 04 */	li r7, 4
/* 80B79650  4B 7E 87 11 */	bl __construct_array
/* 80B79654  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B79658  3C 80 80 B8 */	lis r4, __ct__5csXyzFv@ha /* 0x80B7EF80@ha */
/* 80B7965C  38 84 EF 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B7EF80@l */
/* 80B79660  3C A0 80 B8 */	lis r5, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B79664  38 A5 EF 44 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B79668  38 C0 00 06 */	li r6, 6
/* 80B7966C  38 E0 00 04 */	li r7, 4
/* 80B79670  4B 7E 86 F1 */	bl __construct_array
/* 80B79674  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B79678  3C 80 80 B8 */	lis r4, __ct__5csXyzFv@ha /* 0x80B7EF80@ha */
/* 80B7967C  38 84 EF 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B7EF80@l */
/* 80B79680  3C A0 80 B8 */	lis r5, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B79684  38 A5 EF 44 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B79688  38 C0 00 06 */	li r6, 6
/* 80B7968C  38 E0 00 04 */	li r7, 4
/* 80B79690  4B 7E 86 D1 */	bl __construct_array
/* 80B79694  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B79698  3C 80 80 B8 */	lis r4, __ct__5csXyzFv@ha /* 0x80B7EF80@ha */
/* 80B7969C  38 84 EF 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B7EF80@l */
/* 80B796A0  3C A0 80 B8 */	lis r5, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B796A4  38 A5 EF 44 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B796A8  38 C0 00 06 */	li r6, 6
/* 80B796AC  38 E0 00 04 */	li r7, 4
/* 80B796B0  4B 7E 86 B1 */	bl __construct_array
/* 80B796B4  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B796B8  3C 80 80 B8 */	lis r4, __ct__5csXyzFv@ha /* 0x80B7EF80@ha */
/* 80B796BC  38 84 EF 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B7EF80@l */
/* 80B796C0  3C A0 80 B8 */	lis r5, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B796C4  38 A5 EF 44 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B796C8  38 C0 00 06 */	li r6, 6
/* 80B796CC  38 E0 00 04 */	li r7, 4
/* 80B796D0  4B 7E 86 91 */	bl __construct_array
/* 80B796D4  7F C3 F3 78 */	mr r3, r30
/* 80B796D8  4B 5D 79 61 */	bl initialize__15daNpcF_Lookat_cFv
/* 80B796DC  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B796E0  3C 80 80 B8 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B7EE38@ha */
/* 80B796E4  38 84 EE 38 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B7EE38@l */
/* 80B796E8  3C A0 80 B8 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B7EDF0@ha */
/* 80B796EC  38 A5 ED F0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B7EDF0@l */
/* 80B796F0  38 C0 00 08 */	li r6, 8
/* 80B796F4  38 E0 00 03 */	li r7, 3
/* 80B796F8  4B 7E 86 69 */	bl __construct_array
/* 80B796FC  3B DF 13 38 */	addi r30, r31, 0x1338
/* 80B79700  7F C3 F3 78 */	mr r3, r30
/* 80B79704  4B 50 A3 25 */	bl __ct__12dCcD_GObjInfFv
/* 80B79708  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B7970C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B79710  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B79714  3C 60 80 B9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B8D9EC@ha */
/* 80B79718  38 03 D9 EC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B8D9EC@l */
/* 80B7971C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B79720  3C 60 80 B9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B8D9E0@ha */
/* 80B79724  38 03 D9 E0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B8D9E0@l */
/* 80B79728  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B7972C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B79730  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B79734  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B79738  38 03 00 58 */	addi r0, r3, 0x58
/* 80B7973C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B79740  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B79744  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B79748  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B7974C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B79750  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B79754  38 03 00 84 */	addi r0, r3, 0x84
/* 80B79758  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B7975C  38 7F 15 9C */	addi r3, r31, 0x159c
/* 80B79760  3C 80 80 B8 */	lis r4, __ct__4cXyzFv@ha /* 0x80B7EF84@ha */
/* 80B79764  38 84 EF 84 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B7EF84@l */
/* 80B79768  3C A0 80 B8 */	lis r5, __dt__4cXyzFv@ha /* 0x80B78730@ha */
/* 80B7976C  38 A5 87 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B78730@l */
/* 80B79770  38 C0 00 0C */	li r6, 0xc
/* 80B79774  38 E0 00 03 */	li r7, 3
/* 80B79778  4B 7E 85 E9 */	bl __construct_array
/* 80B7977C  7F E3 FB 78 */	mr r3, r31
/* 80B79780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B79784  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B79788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7978C  7C 08 03 A6 */	mtlr r0
/* 80B79790  38 21 00 10 */	addi r1, r1, 0x10
/* 80B79794  4E 80 00 20 */	blr 
