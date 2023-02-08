lbl_804D68A4:
/* 804D68A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D68A8  7C 08 02 A6 */	mflr r0
/* 804D68AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D68B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D68B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804D68B8  7C 7E 1B 78 */	mr r30, r3
/* 804D68BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D68C0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D68C4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 804D68C8  A8 9E 05 6A */	lha r4, 0x56a(r30)
/* 804D68CC  4B B7 11 AD */	bl endCheck__16dEvent_manager_cFs
/* 804D68D0  2C 03 00 00 */	cmpwi r3, 0
/* 804D68D4  41 82 00 70 */	beq lbl_804D6944
/* 804D68D8  7F C3 F3 78 */	mr r3, r30
/* 804D68DC  4B FF F5 41 */	bl getType__10daAndsw2_cFv
/* 804D68E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D68E4  28 00 00 01 */	cmplwi r0, 1
/* 804D68E8  41 82 00 40 */	beq lbl_804D6928
/* 804D68EC  7F C3 F3 78 */	mr r3, r30
/* 804D68F0  4B FF F5 2D */	bl getType__10daAndsw2_cFv
/* 804D68F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D68F8  28 00 00 03 */	cmplwi r0, 3
/* 804D68FC  41 82 00 2C */	beq lbl_804D6928
/* 804D6900  7F C3 F3 78 */	mr r3, r30
/* 804D6904  4B FF F5 19 */	bl getType__10daAndsw2_cFv
/* 804D6908  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D690C  28 00 00 05 */	cmplwi r0, 5
/* 804D6910  41 82 00 18 */	beq lbl_804D6928
/* 804D6914  7F C3 F3 78 */	mr r3, r30
/* 804D6918  4B FF F5 05 */	bl getType__10daAndsw2_cFv
/* 804D691C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6920  28 00 00 06 */	cmplwi r0, 6
/* 804D6924  40 82 00 10 */	bne lbl_804D6934
lbl_804D6928:
/* 804D6928  38 00 00 04 */	li r0, 4
/* 804D692C  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D6930  48 00 00 0C */	b lbl_804D693C
lbl_804D6934:
/* 804D6934  38 00 00 05 */	li r0, 5
/* 804D6938  98 1E 05 6C */	stb r0, 0x56c(r30)
lbl_804D693C:
/* 804D693C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 804D6940  4B B6 BB 29 */	bl reset__14dEvt_control_cFv
lbl_804D6944:
/* 804D6944  38 60 00 01 */	li r3, 1
/* 804D6948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D694C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6954  7C 08 03 A6 */	mtlr r0
/* 804D6958  38 21 00 10 */	addi r1, r1, 0x10
/* 804D695C  4E 80 00 20 */	blr 
