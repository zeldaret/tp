lbl_8001B9D0:
/* 8001B9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B9D4  7C 08 02 A6 */	mflr r0
/* 8001B9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B9DC  7C 69 1B 78 */	mr r9, r3
/* 8001B9E0  7C 87 23 78 */	mr r7, r4
/* 8001B9E4  7C A6 2B 78 */	mr r6, r5
/* 8001B9E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B9EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B9F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001B9F4  38 00 00 00 */	li r0, 0
/* 8001B9F8  88 83 00 E5 */	lbz r4, 0xe5(r3)
/* 8001B9FC  28 04 00 00 */	cmplwi r4, 0
/* 8001BA00  41 82 00 0C */	beq lbl_8001BA0C
/* 8001BA04  28 04 00 02 */	cmplwi r4, 2
/* 8001BA08  40 82 00 08 */	bne lbl_8001BA10
lbl_8001BA0C:
/* 8001BA0C  38 00 00 01 */	li r0, 1
lbl_8001BA10:
/* 8001BA10  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001BA14  40 82 00 20 */	bne lbl_8001BA34
/* 8001BA18  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 8001BA1C  41 82 00 10 */	beq lbl_8001BA2C
/* 8001BA20  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8001BA24  7C 00 48 40 */	cmplw r0, r9
/* 8001BA28  41 82 00 0C */	beq lbl_8001BA34
lbl_8001BA2C:
/* 8001BA2C  38 60 00 00 */	li r3, 0
/* 8001BA30  48 00 00 3C */	b lbl_8001BA6C
lbl_8001BA34:
/* 8001BA34  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 8001BA38  40 82 00 08 */	bne lbl_8001BA40
/* 8001BA3C  38 E0 00 FF */	li r7, 0xff
lbl_8001BA40:
/* 8001BA40  38 00 00 FF */	li r0, 0xff
/* 8001BA44  90 01 00 08 */	stw r0, 8(r1)
/* 8001BA48  38 80 00 05 */	li r4, 5
/* 8001BA4C  7C E5 3B 78 */	mr r5, r7
/* 8001BA50  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8001BA54  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8001BA58  3D 00 80 40 */	lis r8, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001BA5C  39 08 61 C0 */	addi r8, r8, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001BA60  81 08 5D AC */	lwz r8, 0x5dac(r8)
/* 8001BA64  39 40 FF FF */	li r10, -1
/* 8001BA68  48 02 5C 01 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001BA6C:
/* 8001BA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BA70  7C 08 03 A6 */	mtlr r0
/* 8001BA74  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BA78  4E 80 00 20 */	blr 
