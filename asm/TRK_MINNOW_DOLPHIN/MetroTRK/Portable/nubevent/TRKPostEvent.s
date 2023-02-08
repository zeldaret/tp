lbl_8036CC54:
/* 8036CC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036CC58  7C 08 02 A6 */	mflr r0
/* 8036CC5C  3C 80 80 45 */	lis r4, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CC60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036CC64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036CC68  3B E0 00 00 */	li r31, 0
/* 8036CC6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036CC70  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036CC74  7C 7D 1B 78 */	mr r29, r3
/* 8036CC78  38 64 D8 90 */	addi r3, r4, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CC7C  48 00 28 25 */	bl TRKAcquireMutex
/* 8036CC80  3C 60 80 45 */	lis r3, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CC84  3B C3 D8 90 */	addi r30, r3, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CC88  80 7E 00 04 */	lwz r3, 4(r30)
/* 8036CC8C  2C 03 00 02 */	cmpwi r3, 2
/* 8036CC90  40 82 00 0C */	bne lbl_8036CC9C
/* 8036CC94  3B E0 01 00 */	li r31, 0x100
/* 8036CC98  48 00 00 70 */	b lbl_8036CD08
lbl_8036CC9C:
/* 8036CC9C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8036CCA0  7F A4 EB 78 */	mr r4, r29
/* 8036CCA4  38 A0 00 0C */	li r5, 0xc
/* 8036CCA8  7C 00 1A 14 */	add r0, r0, r3
/* 8036CCAC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8036CCB0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8036CCB4  7C 00 1A 78 */	xor r0, r0, r3
/* 8036CCB8  7C 03 00 50 */	subf r0, r3, r0
/* 8036CCBC  1F A0 00 0C */	mulli r29, r0, 0xc
/* 8036CCC0  7C 7E EA 14 */	add r3, r30, r29
/* 8036CCC4  38 63 00 0C */	addi r3, r3, 0xc
/* 8036CCC8  4B C9 68 F9 */	bl TRK_memcpy
/* 8036CCCC  3C 60 80 45 */	lis r3, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CCD0  38 83 D8 90 */	addi r4, r3, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CCD4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8036CCD8  7C 64 EA 14 */	add r3, r4, r29
/* 8036CCDC  90 03 00 10 */	stw r0, 0x10(r3)
/* 8036CCE0  80 64 00 24 */	lwz r3, 0x24(r4)
/* 8036CCE4  38 03 00 01 */	addi r0, r3, 1
/* 8036CCE8  28 00 01 00 */	cmplwi r0, 0x100
/* 8036CCEC  90 04 00 24 */	stw r0, 0x24(r4)
/* 8036CCF0  40 80 00 0C */	bge lbl_8036CCFC
/* 8036CCF4  38 00 01 00 */	li r0, 0x100
/* 8036CCF8  90 04 00 24 */	stw r0, 0x24(r4)
lbl_8036CCFC:
/* 8036CCFC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8036CD00  38 03 00 01 */	addi r0, r3, 1
/* 8036CD04  90 1E 00 04 */	stw r0, 4(r30)
lbl_8036CD08:
/* 8036CD08  3C 60 80 45 */	lis r3, gTRKEventQueue@ha /* 0x8044D890@ha */
/* 8036CD0C  38 63 D8 90 */	addi r3, r3, gTRKEventQueue@l /* 0x8044D890@l */
/* 8036CD10  48 00 27 89 */	bl TRKReleaseMutex
/* 8036CD14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036CD18  7F E3 FB 78 */	mr r3, r31
/* 8036CD1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036CD20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036CD24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036CD28  7C 08 03 A6 */	mtlr r0
/* 8036CD2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8036CD30  4E 80 00 20 */	blr 
