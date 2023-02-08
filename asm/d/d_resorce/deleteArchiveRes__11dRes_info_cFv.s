lbl_8003B998:
/* 8003B998  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003B99C  7C 08 02 A6 */	mflr r0
/* 8003B9A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003B9A4  39 61 00 40 */	addi r11, r1, 0x40
/* 8003B9A8  48 32 68 21 */	bl _savegpr_24
/* 8003B9AC  7C 7D 1B 78 */	mr r29, r3
/* 8003B9B0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8003B9B4  83 E3 00 48 */	lwz r31, 0x48(r3)
/* 8003B9B8  3B C0 00 00 */	li r30, 0
/* 8003B9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003B9C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003B9C4  3F 83 00 02 */	addis r28, r3, 2
/* 8003B9C8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8003B9CC  48 00 00 A4 */	b lbl_8003BA70
lbl_8003B9D0:
/* 8003B9D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8003B9D4  3C 03 BE AE */	addis r0, r3, 0xbeae
/* 8003B9D8  28 00 43 20 */	cmplwi r0, 0x4320
/* 8003B9DC  40 82 00 8C */	bne lbl_8003BA68
/* 8003B9E0  83 7F 00 0C */	lwz r27, 0xc(r31)
/* 8003B9E4  3B 40 00 00 */	li r26, 0
/* 8003B9E8  48 00 00 74 */	b lbl_8003BA5C
lbl_8003B9EC:
/* 8003B9EC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8003B9F0  7F 64 DB 78 */	mr r4, r27
/* 8003B9F4  48 29 A8 69 */	bl getFileAttribute__10JKRArchiveCFUl
/* 8003B9F8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8003B9FC  41 82 00 58 */	beq lbl_8003BA54
/* 8003BA00  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8003BA04  7F 64 DB 78 */	mr r4, r27
/* 8003BA08  48 29 AC 7D */	bl findIdxResource__10JKRArchiveCFUl
/* 8003BA0C  80 03 00 04 */	lwz r0, 4(r3)
/* 8003BA10  54 04 02 3E */	clrlwi r4, r0, 8
/* 8003BA14  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8003BA18  80 03 00 54 */	lwz r0, 0x54(r3)
/* 8003BA1C  7F 20 22 14 */	add r25, r0, r4
/* 8003BA20  7F 23 CB 78 */	mr r3, r25
/* 8003BA24  48 32 D1 C1 */	bl strlen
/* 8003BA28  3B 03 FF FC */	addi r24, r3, -4
/* 8003BA2C  38 61 00 08 */	addi r3, r1, 8
/* 8003BA30  7F 24 CB 78 */	mr r4, r25
/* 8003BA34  7F 05 C3 78 */	mr r5, r24
/* 8003BA38  48 32 D0 B1 */	bl strncpy
/* 8003BA3C  38 00 00 00 */	li r0, 0
/* 8003BA40  38 61 00 08 */	addi r3, r1, 8
/* 8003BA44  7C 03 C1 AE */	stbx r0, r3, r24
/* 8003BA48  7F 84 E3 78 */	mr r4, r28
/* 8003BA4C  38 A0 00 80 */	li r5, 0x80
/* 8003BA50  48 00 07 45 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
lbl_8003BA54:
/* 8003BA54  3B 7B 00 01 */	addi r27, r27, 1
/* 8003BA58  3B 5A 00 01 */	addi r26, r26, 1
lbl_8003BA5C:
/* 8003BA5C  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8003BA60  7C 1A 00 00 */	cmpw r26, r0
/* 8003BA64  41 80 FF 88 */	blt lbl_8003B9EC
lbl_8003BA68:
/* 8003BA68  3B FF 00 10 */	addi r31, r31, 0x10
/* 8003BA6C  3B DE 00 01 */	addi r30, r30, 1
lbl_8003BA70:
/* 8003BA70  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8003BA74  80 63 00 44 */	lwz r3, 0x44(r3)
/* 8003BA78  80 03 00 00 */	lwz r0, 0(r3)
/* 8003BA7C  7C 1E 00 00 */	cmpw r30, r0
/* 8003BA80  41 80 FF 50 */	blt lbl_8003B9D0
/* 8003BA84  39 61 00 40 */	addi r11, r1, 0x40
/* 8003BA88  48 32 67 8D */	bl _restgpr_24
/* 8003BA8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003BA90  7C 08 03 A6 */	mtlr r0
/* 8003BA94  38 21 00 40 */	addi r1, r1, 0x40
/* 8003BA98  4E 80 00 20 */	blr 
