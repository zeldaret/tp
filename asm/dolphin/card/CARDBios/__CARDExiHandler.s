lbl_80352B40:
/* 80352B40  7C 08 02 A6 */	mflr r0
/* 80352B44  90 01 00 04 */	stw r0, 4(r1)
/* 80352B48  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80352B4C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80352B50  3B E3 00 00 */	addi r31, r3, 0
/* 80352B54  1C 9F 01 10 */	mulli r4, r31, 0x110
/* 80352B58  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80352B5C  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80352B60  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80352B64  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 80352B68  7F C0 22 14 */	add r30, r0, r4
/* 80352B6C  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80352B70  4B FE 80 CD */	bl OSCancelAlarm
/* 80352B74  80 1E 00 00 */	lwz r0, 0(r30)
/* 80352B78  2C 00 00 00 */	cmpwi r0, 0
/* 80352B7C  41 82 00 C0 */	beq lbl_80352C3C
/* 80352B80  38 7F 00 00 */	addi r3, r31, 0
/* 80352B84  38 80 00 00 */	li r4, 0
/* 80352B88  38 A0 00 00 */	li r5, 0
/* 80352B8C  4B FF 14 9D */	bl EXILock
/* 80352B90  2C 03 00 00 */	cmpwi r3, 0
/* 80352B94  40 82 00 0C */	bne lbl_80352BA0
/* 80352B98  3B A0 FF 80 */	li r29, -128
/* 80352B9C  48 00 00 78 */	b lbl_80352C14
lbl_80352BA0:
/* 80352BA0  38 7F 00 00 */	addi r3, r31, 0
/* 80352BA4  38 81 00 10 */	addi r4, r1, 0x10
/* 80352BA8  48 00 02 9D */	bl __CARDReadStatus
/* 80352BAC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80352BB0  41 80 00 5C */	blt lbl_80352C0C
/* 80352BB4  7F E3 FB 78 */	mr r3, r31
/* 80352BB8  48 00 04 6D */	bl __CARDClearStatus
/* 80352BBC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80352BC0  41 80 00 4C */	blt lbl_80352C0C
/* 80352BC4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80352BC8  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 80352BCC  41 82 00 0C */	beq lbl_80352BD8
/* 80352BD0  38 00 FF FB */	li r0, -5
/* 80352BD4  48 00 00 08 */	b lbl_80352BDC
lbl_80352BD8:
/* 80352BD8  38 00 00 00 */	li r0, 0
lbl_80352BDC:
/* 80352BDC  7C 1D 03 78 */	mr r29, r0
/* 80352BE0  2C 1D FF FB */	cmpwi r29, -5
/* 80352BE4  40 82 00 28 */	bne lbl_80352C0C
/* 80352BE8  80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 80352BEC  34 03 FF FF */	addic. r0, r3, -1
/* 80352BF0  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 80352BF4  40 81 00 18 */	ble lbl_80352C0C
/* 80352BF8  7F E3 FB 78 */	mr r3, r31
/* 80352BFC  48 00 05 79 */	bl Retry
/* 80352C00  7C 7D 1B 79 */	or. r29, r3, r3
/* 80352C04  41 80 00 10 */	blt lbl_80352C14
/* 80352C08  48 00 00 34 */	b lbl_80352C3C
lbl_80352C0C:
/* 80352C0C  7F E3 FB 78 */	mr r3, r31
/* 80352C10  4B FF 15 0D */	bl EXIUnlock
lbl_80352C14:
/* 80352C14  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80352C18  28 00 00 00 */	cmplwi r0, 0
/* 80352C1C  7C 0C 03 78 */	mr r12, r0
/* 80352C20  41 82 00 1C */	beq lbl_80352C3C
/* 80352C24  38 00 00 00 */	li r0, 0
/* 80352C28  7D 88 03 A6 */	mtlr r12
/* 80352C2C  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80352C30  38 7F 00 00 */	addi r3, r31, 0
/* 80352C34  38 9D 00 00 */	addi r4, r29, 0
/* 80352C38  4E 80 00 21 */	blrl 
lbl_80352C3C:
/* 80352C3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80352C40  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80352C44  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80352C48  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80352C4C  38 21 00 28 */	addi r1, r1, 0x28
/* 80352C50  7C 08 03 A6 */	mtlr r0
/* 80352C54  4E 80 00 20 */	blr 
