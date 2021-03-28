lbl_8029EA00:
/* 8029EA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EA04  7C 08 02 A6 */	mflr r0
/* 8029EA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EA10  93 C1 00 08 */	stw r30, 8(r1)
/* 8029EA14  7C 7E 1B 78 */	mr r30, r3
/* 8029EA18  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029EA1C  28 00 00 00 */	cmplwi r0, 0
/* 8029EA20  40 82 00 1C */	bne lbl_8029EA3C
/* 8029EA24  3C 60 80 3A */	lis r3, lit_81@ha
/* 8029EA28  38 63 B8 B8 */	addi r3, r3, lit_81@l
/* 8029EA2C  4C C6 31 82 */	crclr 6
/* 8029EA30  4B D6 80 8D */	bl OSReport
/* 8029EA34  38 60 00 00 */	li r3, 0
/* 8029EA38  48 00 00 34 */	b lbl_8029EA6C
lbl_8029EA3C:
/* 8029EA3C  48 09 EC B9 */	bl OSDisableInterrupts
/* 8029EA40  7C 60 1B 78 */	mr r0, r3
/* 8029EA44  7F C3 F3 78 */	mr r3, r30
/* 8029EA48  7C 1F 03 78 */	mr r31, r0
/* 8029EA4C  48 0B 3E B1 */	bl __DSP_insert_task
/* 8029EA50  38 60 00 00 */	li r3, 0
/* 8029EA54  38 00 00 01 */	li r0, 1
/* 8029EA58  90 7E 00 00 */	stw r3, 0(r30)
/* 8029EA5C  7F E3 FB 78 */	mr r3, r31
/* 8029EA60  90 1E 00 08 */	stw r0, 8(r30)
/* 8029EA64  48 09 EC B9 */	bl OSRestoreInterrupts
/* 8029EA68  7F C3 F3 78 */	mr r3, r30
lbl_8029EA6C:
/* 8029EA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EA74  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029EA78  7C 08 03 A6 */	mtlr r0
/* 8029EA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EA80  4E 80 00 20 */	blr 
