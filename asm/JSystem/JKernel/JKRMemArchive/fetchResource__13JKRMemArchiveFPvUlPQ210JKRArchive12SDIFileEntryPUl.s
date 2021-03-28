lbl_802D6E10:
/* 802D6E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6E14  7C 08 02 A6 */	mflr r0
/* 802D6E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6E20  48 08 B3 BD */	bl _savegpr_29
/* 802D6E24  7C 9D 23 78 */	mr r29, r4
/* 802D6E28  7C A8 2B 78 */	mr r8, r5
/* 802D6E2C  7C FE 3B 78 */	mr r30, r7
/* 802D6E30  83 E6 00 0C */	lwz r31, 0xc(r6)
/* 802D6E34  7C 1F 40 40 */	cmplw r31, r8
/* 802D6E38  40 81 00 08 */	ble lbl_802D6E40
/* 802D6E3C  7D 1F 43 78 */	mr r31, r8
lbl_802D6E40:
/* 802D6E40  80 86 00 10 */	lwz r4, 0x10(r6)
/* 802D6E44  28 04 00 00 */	cmplwi r4, 0
/* 802D6E48  41 82 00 14 */	beq lbl_802D6E5C
/* 802D6E4C  7F A3 EB 78 */	mr r3, r29
/* 802D6E50  7F E5 FB 78 */	mr r5, r31
/* 802D6E54  4B D2 C6 ED */	bl memcpy
/* 802D6E58  48 00 00 50 */	b lbl_802D6EA8
lbl_802D6E5C:
/* 802D6E5C  80 06 00 04 */	lwz r0, 4(r6)
/* 802D6E60  54 04 46 3E */	srwi r4, r0, 0x18
/* 802D6E64  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D6E68  40 82 00 0C */	bne lbl_802D6E74
/* 802D6E6C  38 E0 00 00 */	li r7, 0
/* 802D6E70  48 00 00 18 */	b lbl_802D6E88
lbl_802D6E74:
/* 802D6E74  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802D6E78  41 82 00 0C */	beq lbl_802D6E84
/* 802D6E7C  38 E0 00 02 */	li r7, 2
/* 802D6E80  48 00 00 08 */	b lbl_802D6E88
lbl_802D6E84:
/* 802D6E84  38 E0 00 01 */	li r7, 1
lbl_802D6E88:
/* 802D6E88  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802D6E8C  80 06 00 08 */	lwz r0, 8(r6)
/* 802D6E90  7C 63 02 14 */	add r3, r3, r0
/* 802D6E94  7F E4 FB 78 */	mr r4, r31
/* 802D6E98  7F A5 EB 78 */	mr r5, r29
/* 802D6E9C  7D 06 43 78 */	mr r6, r8
/* 802D6EA0  48 00 00 BD */	bl fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
/* 802D6EA4  7C 7F 1B 78 */	mr r31, r3
lbl_802D6EA8:
/* 802D6EA8  28 1E 00 00 */	cmplwi r30, 0
/* 802D6EAC  41 82 00 08 */	beq lbl_802D6EB4
/* 802D6EB0  93 FE 00 00 */	stw r31, 0(r30)
lbl_802D6EB4:
/* 802D6EB4  7F A3 EB 78 */	mr r3, r29
/* 802D6EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6EBC  48 08 B3 6D */	bl _restgpr_29
/* 802D6EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6EC4  7C 08 03 A6 */	mtlr r0
/* 802D6EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6ECC  4E 80 00 20 */	blr 
