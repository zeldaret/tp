lbl_804A2688:
/* 804A2688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A268C  7C 08 02 A6 */	mflr r0
/* 804A2690  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A2698  93 C1 00 08 */	stw r30, 8(r1)
/* 804A269C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A26A0  7C 9F 23 78 */	mr r31, r4
/* 804A26A4  41 82 00 38 */	beq lbl_804A26DC
/* 804A26A8  3C 80 80 4A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x804A2C30@ha */
/* 804A26AC  38 84 2C 30 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x804A2C30@l */
/* 804A26B0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804A26B4  38 04 00 0C */	addi r0, r4, 0xc
/* 804A26B8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804A26BC  38 04 00 18 */	addi r0, r4, 0x18
/* 804A26C0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804A26C4  38 80 00 00 */	li r4, 0
/* 804A26C8  4B BD 38 CD */	bl __dt__9dBgS_AcchFv
/* 804A26CC  7F E0 07 35 */	extsh. r0, r31
/* 804A26D0  40 81 00 0C */	ble lbl_804A26DC
/* 804A26D4  7F C3 F3 78 */	mr r3, r30
/* 804A26D8  4B E2 C6 65 */	bl __dl__FPv
lbl_804A26DC:
/* 804A26DC  7F C3 F3 78 */	mr r3, r30
/* 804A26E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A26E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A26E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A26EC  7C 08 03 A6 */	mtlr r0
/* 804A26F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A26F4  4E 80 00 20 */	blr 
