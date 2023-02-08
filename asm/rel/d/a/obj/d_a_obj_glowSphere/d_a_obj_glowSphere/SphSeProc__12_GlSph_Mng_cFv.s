lbl_80BFA60C:
/* 80BFA60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA610  7C 08 02 A6 */	mflr r0
/* 80BFA614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA61C  3C 60 80 C0 */	lis r3, struct_80BFAFE8+0x2@ha /* 0x80BFAFEA@ha */
/* 80BFA620  38 83 AF EA */	addi r4, r3, struct_80BFAFE8+0x2@l /* 0x80BFAFEA@l */
/* 80BFA624  A8 64 00 00 */	lha r3, 0(r4)
/* 80BFA628  2C 03 00 00 */	cmpwi r3, 0
/* 80BFA62C  40 81 00 1C */	ble lbl_80BFA648
/* 80BFA630  38 03 FF FF */	addi r0, r3, -1
/* 80BFA634  B0 04 00 00 */	sth r0, 0(r4)
/* 80BFA638  7C 00 07 35 */	extsh. r0, r0
/* 80BFA63C  40 82 00 88 */	bne lbl_80BFA6C4
/* 80BFA640  48 00 00 99 */	bl clrSphSe__12_GlSph_Mng_cFv
/* 80BFA644  48 00 00 80 */	b lbl_80BFA6C4
lbl_80BFA648:
/* 80BFA648  3C 60 80 C0 */	lis r3, struct_80BFAFE8+0x0@ha /* 0x80BFAFE8@ha */
/* 80BFA64C  A0 03 AF E8 */	lhz r0, struct_80BFAFE8+0x0@l(r3)  /* 0x80BFAFE8@l */
/* 80BFA650  28 00 00 00 */	cmplwi r0, 0
/* 80BFA654  41 82 00 68 */	beq lbl_80BFA6BC
/* 80BFA658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFA65C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFA660  80 1F 5F 1C */	lwz r0, 0x5f1c(r31)
/* 80BFA664  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BFA668  40 82 00 20 */	bne lbl_80BFA688
/* 80BFA66C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BFA670  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BFA674  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80BFA678  7D 89 03 A6 */	mtctr r12
/* 80BFA67C  4E 80 04 21 */	bctrl 
/* 80BFA680  28 03 00 00 */	cmplwi r3, 0
/* 80BFA684  41 82 00 28 */	beq lbl_80BFA6AC
lbl_80BFA688:
/* 80BFA688  80 7F 5F 1C */	lwz r3, 0x5f1c(r31)
/* 80BFA68C  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80BFA690  40 82 00 0C */	bne lbl_80BFA69C
/* 80BFA694  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80BFA698  41 82 00 2C */	beq lbl_80BFA6C4
lbl_80BFA69C:
/* 80BFA69C  38 00 00 10 */	li r0, 0x10
/* 80BFA6A0  3C 60 80 C0 */	lis r3, struct_80BFAFE8+0x2@ha /* 0x80BFAFEA@ha */
/* 80BFA6A4  B0 03 AF EA */	sth r0, struct_80BFAFE8+0x2@l(r3)  /* 0x80BFAFEA@l */
/* 80BFA6A8  48 00 00 1C */	b lbl_80BFA6C4
lbl_80BFA6AC:
/* 80BFA6AC  38 00 00 10 */	li r0, 0x10
/* 80BFA6B0  3C 60 80 C0 */	lis r3, struct_80BFAFE8+0x2@ha /* 0x80BFAFEA@ha */
/* 80BFA6B4  B0 03 AF EA */	sth r0, struct_80BFAFE8+0x2@l(r3)  /* 0x80BFAFEA@l */
/* 80BFA6B8  48 00 00 0C */	b lbl_80BFA6C4
lbl_80BFA6BC:
/* 80BFA6BC  38 00 00 00 */	li r0, 0
/* 80BFA6C0  B0 04 00 00 */	sth r0, 0(r4)
lbl_80BFA6C4:
/* 80BFA6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA6CC  7C 08 03 A6 */	mtlr r0
/* 80BFA6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA6D4  4E 80 00 20 */	blr 
