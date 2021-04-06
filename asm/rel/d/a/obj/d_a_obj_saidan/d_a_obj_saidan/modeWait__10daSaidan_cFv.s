lbl_80CC4154:
/* 80CC4154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4158  7C 08 02 A6 */	mflr r0
/* 80CC415C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4164  7C 7F 1B 78 */	mr r31, r3
/* 80CC4168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC416C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC4170  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC4174  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CC4178  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC417C  7C 05 07 74 */	extsb r5, r0
/* 80CC4180  4B 37 11 E1 */	bl isSwitch__10dSv_info_cCFii
/* 80CC4184  98 7F 05 AD */	stb r3, 0x5ad(r31)
/* 80CC4188  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80CC418C  28 00 00 00 */	cmplwi r0, 0
/* 80CC4190  41 82 00 0C */	beq lbl_80CC419C
/* 80CC4194  7F E3 FB 78 */	mr r3, r31
/* 80CC4198  48 00 00 19 */	bl init_modeMove__10daSaidan_cFv
lbl_80CC419C:
/* 80CC419C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC41A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC41A4  7C 08 03 A6 */	mtlr r0
/* 80CC41A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC41AC  4E 80 00 20 */	blr 
