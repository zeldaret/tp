lbl_80AB4CA4:
/* 80AB4CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4CA8  7C 08 02 A6 */	mflr r0
/* 80AB4CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB4CB4  3C A0 80 AB */	lis r5, m__17daNpcPray_Param_c@ha /* 0x80AB5808@ha */
/* 80AB4CB8  3B E5 58 08 */	addi r31, r5, m__17daNpcPray_Param_c@l /* 0x80AB5808@l */
/* 80AB4CBC  80 04 00 00 */	lwz r0, 0(r4)
/* 80AB4CC0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80AB4CC4  41 82 00 14 */	beq lbl_80AB4CD8
/* 80AB4CC8  40 80 00 54 */	bge lbl_80AB4D1C
/* 80AB4CCC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AB4CD0  41 82 00 4C */	beq lbl_80AB4D1C
/* 80AB4CD4  48 00 00 48 */	b lbl_80AB4D1C
lbl_80AB4CD8:
/* 80AB4CD8  38 63 0C 94 */	addi r3, r3, 0xc94
/* 80AB4CDC  4B 69 BA 11 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4CE0  28 03 00 00 */	cmplwi r3, 0
/* 80AB4CE4  41 82 00 38 */	beq lbl_80AB4D1C
/* 80AB4CE8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AB4CEC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80AB4CF0  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80AB4CF4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80AB4CF8  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80AB4CFC  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80AB4D00  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80AB4D04  38 00 00 00 */	li r0, 0
/* 80AB4D08  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80AB4D0C  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80AB4D10  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80AB4D14  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80AB4D18  D0 03 05 34 */	stfs f0, 0x534(r3)
lbl_80AB4D1C:
/* 80AB4D1C  38 60 00 01 */	li r3, 1
/* 80AB4D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB4D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB4D28  7C 08 03 A6 */	mtlr r0
/* 80AB4D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB4D30  4E 80 00 20 */	blr 
