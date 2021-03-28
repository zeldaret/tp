lbl_801DA464:
/* 801DA464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DA468  7C 08 02 A6 */	mflr r0
/* 801DA46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DA470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DA474  93 C1 00 08 */	stw r30, 8(r1)
/* 801DA478  7C 7F 1B 78 */	mr r31, r3
/* 801DA47C  7C 9E 23 78 */	mr r30, r4
/* 801DA480  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801DA484  40 82 00 18 */	bne lbl_801DA49C
/* 801DA488  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA48C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DA490  88 03 0A 19 */	lbz r0, 0xa19(r3)
/* 801DA494  28 00 00 00 */	cmplwi r0, 0
/* 801DA498  41 82 00 34 */	beq lbl_801DA4CC
lbl_801DA49C:
/* 801DA49C  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 801DA4A0  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DA4A4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DA4A8  C0 24 09 EC */	lfs f1, 0x9ec(r4)
/* 801DA4AC  C0 44 09 F0 */	lfs f2, 0x9f0(r4)
/* 801DA4B0  48 07 A1 01 */	bl paneTrans__8CPaneMgrFff
/* 801DA4B4  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 801DA4B8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DA4BC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DA4C0  C0 24 09 F4 */	lfs f1, 0x9f4(r4)
/* 801DA4C4  C0 44 09 FC */	lfs f2, 0x9fc(r4)
/* 801DA4C8  48 07 A0 E9 */	bl paneTrans__8CPaneMgrFff
lbl_801DA4CC:
/* 801DA4CC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA4D0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DA4D4  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801DA4D8  28 00 00 00 */	cmplwi r0, 0
/* 801DA4DC  40 82 00 0C */	bne lbl_801DA4E8
/* 801DA4E0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801DA4E4  41 82 01 34 */	beq lbl_801DA618
lbl_801DA4E8:
/* 801DA4E8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 801DA4EC  28 03 00 00 */	cmplwi r3, 0
/* 801DA4F0  41 82 00 44 */	beq lbl_801DA534
/* 801DA4F4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DA4F8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DA4FC  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801DA500  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801DA504  48 07 A0 AD */	bl paneTrans__8CPaneMgrFff
/* 801DA508  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA50C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DA510  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801DA514  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 801DA518  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA51C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DA520  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DA524  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA528  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DA52C  7D 89 03 A6 */	mtctr r12
/* 801DA530  4E 80 04 21 */	bctrl 
lbl_801DA534:
/* 801DA534  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 801DA538  28 03 00 00 */	cmplwi r3, 0
/* 801DA53C  41 82 00 44 */	beq lbl_801DA580
/* 801DA540  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DA544  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DA548  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801DA54C  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801DA550  48 07 A0 61 */	bl paneTrans__8CPaneMgrFff
/* 801DA554  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA558  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DA55C  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801DA560  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 801DA564  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA568  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DA56C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DA570  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA574  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DA578  7D 89 03 A6 */	mtctr r12
/* 801DA57C  4E 80 04 21 */	bctrl 
lbl_801DA580:
/* 801DA580  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 801DA584  28 03 00 00 */	cmplwi r3, 0
/* 801DA588  41 82 00 44 */	beq lbl_801DA5CC
/* 801DA58C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DA590  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DA594  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801DA598  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801DA59C  48 07 A0 15 */	bl paneTrans__8CPaneMgrFff
/* 801DA5A0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA5A4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DA5A8  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801DA5AC  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 801DA5B0  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA5B4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DA5B8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DA5BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA5C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DA5C4  7D 89 03 A6 */	mtctr r12
/* 801DA5C8  4E 80 04 21 */	bctrl 
lbl_801DA5CC:
/* 801DA5CC  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 801DA5D0  28 03 00 00 */	cmplwi r3, 0
/* 801DA5D4  41 82 00 44 */	beq lbl_801DA618
/* 801DA5D8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DA5DC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DA5E0  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801DA5E4  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801DA5E8  48 07 9F C9 */	bl paneTrans__8CPaneMgrFff
/* 801DA5EC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA5F0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DA5F4  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801DA5F8  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 801DA5FC  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA600  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DA604  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DA608  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA60C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DA610  7D 89 03 A6 */	mtctr r12
/* 801DA614  4E 80 04 21 */	bctrl 
lbl_801DA618:
/* 801DA618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DA61C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DA620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA624  7C 08 03 A6 */	mtlr r0
/* 801DA628  38 21 00 10 */	addi r1, r1, 0x10
/* 801DA62C  4E 80 00 20 */	blr 
