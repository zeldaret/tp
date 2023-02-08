lbl_80BA1BD8:
/* 80BA1BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1BDC  7C 08 02 A6 */	mflr r0
/* 80BA1BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1BE8  7C 7F 1B 78 */	mr r31, r3
/* 80BA1BEC  4B FF FD 89 */	bl playerAreaCheck__14daAmiShutter_cFv
/* 80BA1BF0  2C 03 00 01 */	cmpwi r3, 1
/* 80BA1BF4  40 82 00 88 */	bne lbl_80BA1C7C
/* 80BA1BF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BA1BFC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BA1C00  2C 00 00 FF */	cmpwi r0, 0xff
/* 80BA1C04  41 82 00 64 */	beq lbl_80BA1C68
/* 80BA1C08  88 1F 05 C5 */	lbz r0, 0x5c5(r31)
/* 80BA1C0C  28 00 00 00 */	cmplwi r0, 0
/* 80BA1C10  40 82 00 3C */	bne lbl_80BA1C4C
/* 80BA1C14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA1C18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA1C1C  38 80 00 04 */	li r4, 4
/* 80BA1C20  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BA1C24  7C 05 07 74 */	extsb r5, r0
/* 80BA1C28  4B 49 37 39 */	bl isSwitch__10dSv_info_cCFii
/* 80BA1C2C  2C 03 00 01 */	cmpwi r3, 1
/* 80BA1C30  40 82 00 1C */	bne lbl_80BA1C4C
/* 80BA1C34  7F E3 FB 78 */	mr r3, r31
/* 80BA1C38  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80BA1C3C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80BA1C40  7D 89 03 A6 */	mtctr r12
/* 80BA1C44  4E 80 04 21 */	bctrl 
/* 80BA1C48  48 00 00 34 */	b lbl_80BA1C7C
lbl_80BA1C4C:
/* 80BA1C4C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80BA1C50  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BA1C54  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BA1C58  38 A0 00 FF */	li r5, 0xff
/* 80BA1C5C  38 C0 00 01 */	li r6, 1
/* 80BA1C60  4B 4A 6C E1 */	bl orderEvent__17dEvLib_callback_cFiii
/* 80BA1C64  48 00 00 18 */	b lbl_80BA1C7C
lbl_80BA1C68:
/* 80BA1C68  7F E3 FB 78 */	mr r3, r31
/* 80BA1C6C  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80BA1C70  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80BA1C74  7D 89 03 A6 */	mtctr r12
/* 80BA1C78  4E 80 04 21 */	bctrl 
lbl_80BA1C7C:
/* 80BA1C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1C84  7C 08 03 A6 */	mtlr r0
/* 80BA1C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1C8C  4E 80 00 20 */	blr 
