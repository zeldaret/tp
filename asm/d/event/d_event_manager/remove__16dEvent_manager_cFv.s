lbl_80046C0C:
/* 80046C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046C10  7C 08 02 A6 */	mflr r0
/* 80046C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046C18  39 61 00 20 */	addi r11, r1, 0x20
/* 80046C1C  48 31 B5 C1 */	bl _savegpr_29
/* 80046C20  7C 7D 1B 78 */	mr r29, r3
/* 80046C24  3B C0 00 00 */	li r30, 0
/* 80046C28  3B E0 00 00 */	li r31, 0
lbl_80046C2C:
/* 80046C2C  7C 7D FA 14 */	add r3, r29, r31
/* 80046C30  4B FF F5 09 */	bl init__11dEvDtBase_cFv
/* 80046C34  3B DE 00 01 */	addi r30, r30, 1
/* 80046C38  2C 1E 00 0B */	cmpwi r30, 0xb
/* 80046C3C  3B FF 00 24 */	addi r31, r31, 0x24
/* 80046C40  41 80 FF EC */	blt lbl_80046C2C
/* 80046C44  38 00 00 00 */	li r0, 0
/* 80046C48  90 1D 01 8C */	stw r0, 0x18c(r29)
/* 80046C4C  38 7D 01 90 */	addi r3, r29, 0x190
/* 80046C50  4B FF F7 8D */	bl init__18dEvent_exception_cFv
/* 80046C54  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 80046C58  4B FF D2 01 */	bl init__11dEvDtFlag_cFv
/* 80046C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80046C60  48 31 B5 C9 */	bl _restgpr_29
/* 80046C64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046C68  7C 08 03 A6 */	mtlr r0
/* 80046C6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80046C70  4E 80 00 20 */	blr 
