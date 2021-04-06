lbl_80341BAC:
/* 80341BAC  7C 08 02 A6 */	mflr r0
/* 80341BB0  90 01 00 04 */	stw r0, 4(r1)
/* 80341BB4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80341BB8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80341BBC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80341BC0  7C 7E 1B 78 */	mr r30, r3
/* 80341BC4  4B FF BB 31 */	bl OSDisableInterrupts
/* 80341BC8  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000E4@ha */
/* 80341BCC  80 84 00 E4 */	lwz r4, 0x00E4(r4)  /* 0x800000E4@l */
/* 80341BD0  38 00 00 04 */	li r0, 4
/* 80341BD4  7C 7F 1B 78 */	mr r31, r3
/* 80341BD8  B0 04 02 C8 */	sth r0, 0x2c8(r4)
/* 80341BDC  93 C4 02 DC */	stw r30, 0x2dc(r4)
/* 80341BE0  80 BE 00 00 */	lwz r5, 0(r30)
/* 80341BE4  48 00 00 08 */	b lbl_80341BEC
lbl_80341BE8:
/* 80341BE8  80 A5 02 E0 */	lwz r5, 0x2e0(r5)
lbl_80341BEC:
/* 80341BEC  28 05 00 00 */	cmplwi r5, 0
/* 80341BF0  41 82 00 14 */	beq lbl_80341C04
/* 80341BF4  80 65 02 D0 */	lwz r3, 0x2d0(r5)
/* 80341BF8  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 80341BFC  7C 03 00 00 */	cmpw r3, r0
/* 80341C00  40 81 FF E8 */	ble lbl_80341BE8
lbl_80341C04:
/* 80341C04  28 05 00 00 */	cmplwi r5, 0
/* 80341C08  40 82 00 30 */	bne lbl_80341C38
/* 80341C0C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80341C10  28 03 00 00 */	cmplwi r3, 0
/* 80341C14  40 82 00 0C */	bne lbl_80341C20
/* 80341C18  90 9E 00 00 */	stw r4, 0(r30)
/* 80341C1C  48 00 00 08 */	b lbl_80341C24
lbl_80341C20:
/* 80341C20  90 83 02 E0 */	stw r4, 0x2e0(r3)
lbl_80341C24:
/* 80341C24  90 64 02 E4 */	stw r3, 0x2e4(r4)
/* 80341C28  38 00 00 00 */	li r0, 0
/* 80341C2C  90 04 02 E0 */	stw r0, 0x2e0(r4)
/* 80341C30  90 9E 00 04 */	stw r4, 4(r30)
/* 80341C34  48 00 00 28 */	b lbl_80341C5C
lbl_80341C38:
/* 80341C38  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 80341C3C  80 65 02 E4 */	lwz r3, 0x2e4(r5)
/* 80341C40  90 85 02 E4 */	stw r4, 0x2e4(r5)
/* 80341C44  28 03 00 00 */	cmplwi r3, 0
/* 80341C48  90 64 02 E4 */	stw r3, 0x2e4(r4)
/* 80341C4C  40 82 00 0C */	bne lbl_80341C58
/* 80341C50  90 9E 00 00 */	stw r4, 0(r30)
/* 80341C54  48 00 00 08 */	b lbl_80341C5C
lbl_80341C58:
/* 80341C58  90 83 02 E0 */	stw r4, 0x2e0(r3)
lbl_80341C5C:
/* 80341C5C  38 00 00 01 */	li r0, 1
/* 80341C60  90 0D 91 44 */	stw r0, RunQueueHint(r13)
/* 80341C64  80 0D 91 44 */	lwz r0, RunQueueHint(r13)
/* 80341C68  2C 00 00 00 */	cmpwi r0, 0
/* 80341C6C  41 82 00 0C */	beq lbl_80341C78
/* 80341C70  38 60 00 00 */	li r3, 0
/* 80341C74  4B FF F3 85 */	bl SelectThread
lbl_80341C78:
/* 80341C78  7F E3 FB 78 */	mr r3, r31
/* 80341C7C  4B FF BA A1 */	bl OSRestoreInterrupts
/* 80341C80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80341C84  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80341C88  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80341C8C  38 21 00 18 */	addi r1, r1, 0x18
/* 80341C90  7C 08 03 A6 */	mtlr r0
/* 80341C94  4E 80 00 20 */	blr 
