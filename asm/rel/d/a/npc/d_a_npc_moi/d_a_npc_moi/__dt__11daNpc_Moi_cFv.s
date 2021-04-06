lbl_80A73F4C:
/* 80A73F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73F50  7C 08 02 A6 */	mflr r0
/* 80A73F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A73F5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A73F60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A73F64  7C 9F 23 78 */	mr r31, r4
/* 80A73F68  41 82 01 CC */	beq lbl_80A74134
/* 80A73F6C  3C 60 80 A8 */	lis r3, __vt__11daNpc_Moi_c@ha /* 0x80A7BED0@ha */
/* 80A73F70  38 03 BE D0 */	addi r0, r3, __vt__11daNpc_Moi_c@l /* 0x80A7BED0@l */
/* 80A73F74  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A73F78  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A73F7C  28 03 00 00 */	cmplwi r3, 0
/* 80A73F80  41 82 00 08 */	beq lbl_80A73F88
/* 80A73F84  4B 59 D3 8D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A73F88:
/* 80A73F88  7F C3 F3 78 */	mr r3, r30
/* 80A73F8C  88 1E 15 C4 */	lbz r0, 0x15c4(r30)
/* 80A73F90  54 00 10 3A */	slwi r0, r0, 2
/* 80A73F94  3C 80 80 A8 */	lis r4, l_loadResPtrnList@ha /* 0x80A7B20C@ha */
/* 80A73F98  38 84 B2 0C */	addi r4, r4, l_loadResPtrnList@l /* 0x80A7B20C@l */
/* 80A73F9C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A73FA0  3C A0 80 A8 */	lis r5, l_resNameList@ha /* 0x80A7B1DC@ha */
/* 80A73FA4  38 A5 B1 DC */	addi r5, r5, l_resNameList@l /* 0x80A7B1DC@l */
/* 80A73FA8  4B 6D 45 05 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80A73FAC  38 7E 16 34 */	addi r3, r30, 0x1634
/* 80A73FB0  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A79EA8@ha */
/* 80A73FB4  38 84 9E A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A79EA8@l */
/* 80A73FB8  38 A0 00 06 */	li r5, 6
/* 80A73FBC  38 C0 00 03 */	li r6, 3
/* 80A73FC0  4B 8E DD 29 */	bl __destroy_arr
/* 80A73FC4  34 1E 15 E8 */	addic. r0, r30, 0x15e8
/* 80A73FC8  41 82 00 10 */	beq lbl_80A73FD8
/* 80A73FCC  3C 60 80 A8 */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80A7BEC4@ha */
/* 80A73FD0  38 03 BE C4 */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80A7BEC4@l */
/* 80A73FD4  90 1E 16 0C */	stw r0, 0x160c(r30)
lbl_80A73FD8:
/* 80A73FD8  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 80A73FDC  3C 80 80 A8 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A79E60@ha */
/* 80A73FE0  38 84 9E 60 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A79E60@l */
/* 80A73FE4  38 A0 00 08 */	li r5, 8
/* 80A73FE8  38 C0 00 04 */	li r6, 4
/* 80A73FEC  4B 8E DC FD */	bl __destroy_arr
/* 80A73FF0  34 1E 14 88 */	addic. r0, r30, 0x1488
/* 80A73FF4  41 82 00 84 */	beq lbl_80A74078
/* 80A73FF8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80A73FFC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80A74000  90 7E 14 C4 */	stw r3, 0x14c4(r30)
/* 80A74004  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A74008  90 1E 15 A8 */	stw r0, 0x15a8(r30)
/* 80A7400C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A74010  90 1E 15 BC */	stw r0, 0x15bc(r30)
/* 80A74014  34 1E 15 8C */	addic. r0, r30, 0x158c
/* 80A74018  41 82 00 54 */	beq lbl_80A7406C
/* 80A7401C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80A74020  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80A74024  90 7E 15 A8 */	stw r3, 0x15a8(r30)
/* 80A74028  38 03 00 58 */	addi r0, r3, 0x58
/* 80A7402C  90 1E 15 BC */	stw r0, 0x15bc(r30)
/* 80A74030  34 1E 15 AC */	addic. r0, r30, 0x15ac
/* 80A74034  41 82 00 10 */	beq lbl_80A74044
/* 80A74038  3C 60 80 A8 */	lis r3, __vt__8cM3dGSph@ha /* 0x80A7BEB8@ha */
/* 80A7403C  38 03 BE B8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80A7BEB8@l */
/* 80A74040  90 1E 15 BC */	stw r0, 0x15bc(r30)
lbl_80A74044:
/* 80A74044  34 1E 15 8C */	addic. r0, r30, 0x158c
/* 80A74048  41 82 00 24 */	beq lbl_80A7406C
/* 80A7404C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A74050  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A74054  90 1E 15 A8 */	stw r0, 0x15a8(r30)
/* 80A74058  34 1E 15 8C */	addic. r0, r30, 0x158c
/* 80A7405C  41 82 00 10 */	beq lbl_80A7406C
/* 80A74060  3C 60 80 A8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A7BEAC@ha */
/* 80A74064  38 03 BE AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A7BEAC@l */
/* 80A74068  90 1E 15 A4 */	stw r0, 0x15a4(r30)
lbl_80A7406C:
/* 80A7406C  38 7E 14 88 */	addi r3, r30, 0x1488
/* 80A74070  38 80 00 00 */	li r4, 0
/* 80A74074  4B 61 00 71 */	bl __dt__12dCcD_GObjInfFv
lbl_80A74078:
/* 80A74078  34 1E 13 4C */	addic. r0, r30, 0x134c
/* 80A7407C  41 82 00 84 */	beq lbl_80A74100
/* 80A74080  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A74084  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A74088  90 7E 13 88 */	stw r3, 0x1388(r30)
/* 80A7408C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A74090  90 1E 14 6C */	stw r0, 0x146c(r30)
/* 80A74094  38 03 00 84 */	addi r0, r3, 0x84
/* 80A74098  90 1E 14 84 */	stw r0, 0x1484(r30)
/* 80A7409C  34 1E 14 50 */	addic. r0, r30, 0x1450
/* 80A740A0  41 82 00 54 */	beq lbl_80A740F4
/* 80A740A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A740A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A740AC  90 7E 14 6C */	stw r3, 0x146c(r30)
/* 80A740B0  38 03 00 58 */	addi r0, r3, 0x58
/* 80A740B4  90 1E 14 84 */	stw r0, 0x1484(r30)
/* 80A740B8  34 1E 14 70 */	addic. r0, r30, 0x1470
/* 80A740BC  41 82 00 10 */	beq lbl_80A740CC
/* 80A740C0  3C 60 80 A8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A7BEA0@ha */
/* 80A740C4  38 03 BE A0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A7BEA0@l */
/* 80A740C8  90 1E 14 84 */	stw r0, 0x1484(r30)
lbl_80A740CC:
/* 80A740CC  34 1E 14 50 */	addic. r0, r30, 0x1450
/* 80A740D0  41 82 00 24 */	beq lbl_80A740F4
/* 80A740D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A740D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A740DC  90 1E 14 6C */	stw r0, 0x146c(r30)
/* 80A740E0  34 1E 14 50 */	addic. r0, r30, 0x1450
/* 80A740E4  41 82 00 10 */	beq lbl_80A740F4
/* 80A740E8  3C 60 80 A8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A7BEAC@ha */
/* 80A740EC  38 03 BE AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A7BEAC@l */
/* 80A740F0  90 1E 14 68 */	stw r0, 0x1468(r30)
lbl_80A740F4:
/* 80A740F4  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80A740F8  38 80 00 00 */	li r4, 0
/* 80A740FC  4B 60 FF E9 */	bl __dt__12dCcD_GObjInfFv
lbl_80A74100:
/* 80A74100  38 7E 0E 5C */	addi r3, r30, 0xe5c
/* 80A74104  3C 80 80 A8 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80A79D94@ha */
/* 80A74108  38 84 9D 94 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80A79D94@l */
/* 80A7410C  38 A0 01 3C */	li r5, 0x13c
/* 80A74110  38 C0 00 04 */	li r6, 4
/* 80A74114  4B 8E DB D5 */	bl __destroy_arr
/* 80A74118  7F C3 F3 78 */	mr r3, r30
/* 80A7411C  38 80 00 00 */	li r4, 0
/* 80A74120  48 00 58 B1 */	bl __dt__8daNpcT_cFv
/* 80A74124  7F E0 07 35 */	extsh. r0, r31
/* 80A74128  40 81 00 0C */	ble lbl_80A74134
/* 80A7412C  7F C3 F3 78 */	mr r3, r30
/* 80A74130  4B 85 AC 0D */	bl __dl__FPv
lbl_80A74134:
/* 80A74134  7F C3 F3 78 */	mr r3, r30
/* 80A74138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7413C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A74140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A74144  7C 08 03 A6 */	mtlr r0
/* 80A74148  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7414C  4E 80 00 20 */	blr 
