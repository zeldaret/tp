lbl_80031BF4:
/* 80031BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031BF8  7C 08 02 A6 */	mflr r0
/* 80031BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031C00  7C 65 1B 78 */	mr r5, r3
/* 80031C04  88 83 05 68 */	lbz r4, 0x568(r3)
/* 80031C08  28 04 00 FF */	cmplwi r4, 0xff
/* 80031C0C  41 82 00 20 */	beq lbl_80031C2C
/* 80031C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80031C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80031C18  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80031C1C  7C 05 07 74 */	extsb r5, r0
/* 80031C20  48 00 37 41 */	bl isSwitch__10dSv_info_cCFii
/* 80031C24  2C 03 00 00 */	cmpwi r3, 0
/* 80031C28  41 82 00 0C */	beq lbl_80031C34
lbl_80031C2C:
/* 80031C2C  38 60 00 01 */	li r3, 1
/* 80031C30  48 00 00 08 */	b lbl_80031C38
lbl_80031C34:
/* 80031C34  38 60 00 00 */	li r3, 0
lbl_80031C38:
/* 80031C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031C3C  7C 08 03 A6 */	mtlr r0
/* 80031C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80031C44  4E 80 00 20 */	blr 
