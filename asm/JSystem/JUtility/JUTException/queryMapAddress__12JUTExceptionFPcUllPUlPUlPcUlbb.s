lbl_802E3BA0:
/* 802E3BA0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802E3BA4  7C 08 02 A6 */	mflr r0
/* 802E3BA8  90 01 00 84 */	stw r0, 0x84(r1)
/* 802E3BAC  39 61 00 80 */	addi r11, r1, 0x80
/* 802E3BB0  48 07 E6 19 */	bl _savegpr_24
/* 802E3BB4  7C 60 1B 79 */	or. r0, r3, r3
/* 802E3BB8  7C 98 23 78 */	mr r24, r4
/* 802E3BBC  7C B9 2B 78 */	mr r25, r5
/* 802E3BC0  7C DA 33 78 */	mr r26, r6
/* 802E3BC4  7C FB 3B 78 */	mr r27, r7
/* 802E3BC8  7D 1C 43 78 */	mr r28, r8
/* 802E3BCC  7D 3D 4B 78 */	mr r29, r9
/* 802E3BD0  7D 5E 53 78 */	mr r30, r10
/* 802E3BD4  8B E1 00 8B */	lbz r31, 0x8b(r1)
/* 802E3BD8  41 82 00 60 */	beq lbl_802E3C38
/* 802E3BDC  38 61 00 10 */	addi r3, r1, 0x10
/* 802E3BE0  7C 04 03 78 */	mr r4, r0
/* 802E3BE4  48 08 4F 49 */	bl strcpy
/* 802E3BE8  38 61 00 10 */	addi r3, r1, 0x10
/* 802E3BEC  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E3BF0  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E3BF4  38 84 04 E9 */	addi r4, r4, 0x4e9
/* 802E3BF8  48 08 4E C5 */	bl strcat
/* 802E3BFC  93 E1 00 08 */	stw r31, 8(r1)
/* 802E3C00  38 61 00 10 */	addi r3, r1, 0x10
/* 802E3C04  7F 04 C3 78 */	mr r4, r24
/* 802E3C08  7F 25 CB 78 */	mr r5, r25
/* 802E3C0C  7F 46 D3 78 */	mr r6, r26
/* 802E3C10  7F 67 DB 78 */	mr r7, r27
/* 802E3C14  7F 88 E3 78 */	mr r8, r28
/* 802E3C18  7F A9 EB 78 */	mr r9, r29
/* 802E3C1C  7F CA F3 78 */	mr r10, r30
/* 802E3C20  48 00 00 71 */	bl queryMapAddress_single__12JUTExceptionFPcUllPUlPUlPcUlbb
/* 802E3C24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E3C28  28 00 00 01 */	cmplwi r0, 1
/* 802E3C2C  40 82 00 48 */	bne lbl_802E3C74
/* 802E3C30  38 60 00 01 */	li r3, 1
/* 802E3C34  48 00 00 44 */	b lbl_802E3C78
lbl_802E3C38:
/* 802E3C38  3C 60 80 43 */	lis r3, sMapFileList__12JUTException@ha /* 0x80434598@ha */
/* 802E3C3C  38 63 45 98 */	addi r3, r3, sMapFileList__12JUTException@l /* 0x80434598@l */
/* 802E3C40  80 63 00 00 */	lwz r3, 0(r3)
/* 802E3C44  28 03 00 00 */	cmplwi r3, 0
/* 802E3C48  41 82 00 2C */	beq lbl_802E3C74
/* 802E3C4C  80 63 00 00 */	lwz r3, 0(r3)
/* 802E3C50  93 E1 00 08 */	stw r31, 8(r1)
/* 802E3C54  80 63 00 00 */	lwz r3, 0(r3)
/* 802E3C58  38 A0 FF FF */	li r5, -1
/* 802E3C5C  48 00 00 35 */	bl queryMapAddress_single__12JUTExceptionFPcUllPUlPUlPcUlbb
/* 802E3C60  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E3C64  28 00 00 01 */	cmplwi r0, 1
/* 802E3C68  40 82 00 0C */	bne lbl_802E3C74
/* 802E3C6C  38 60 00 01 */	li r3, 1
/* 802E3C70  48 00 00 08 */	b lbl_802E3C78
lbl_802E3C74:
/* 802E3C74  38 60 00 00 */	li r3, 0
lbl_802E3C78:
/* 802E3C78  39 61 00 80 */	addi r11, r1, 0x80
/* 802E3C7C  48 07 E5 99 */	bl _restgpr_24
/* 802E3C80  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802E3C84  7C 08 03 A6 */	mtlr r0
/* 802E3C88  38 21 00 80 */	addi r1, r1, 0x80
/* 802E3C8C  4E 80 00 20 */	blr 
