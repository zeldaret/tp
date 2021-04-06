lbl_80368C00:
/* 80368C00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80368C04  7C 08 02 A6 */	mflr r0
/* 80368C08  38 E0 00 00 */	li r7, 0
/* 80368C0C  3C C0 80 00 */	lis r6, 0x8000 /* 0x7FFFFFFF@ha */
/* 80368C10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80368C14  39 01 00 0C */	addi r8, r1, 0xc
/* 80368C18  39 21 00 08 */	addi r9, r1, 8
/* 80368C1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80368C20  7C 9F 23 78 */	mr r31, r4
/* 80368C24  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x7FFFFFFF@l */
/* 80368C28  38 C1 00 14 */	addi r6, r1, 0x14
/* 80368C2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80368C30  7C 7E 1B 78 */	mr r30, r3
/* 80368C34  3C 60 80 37 */	lis r3, __StringRead@ha /* 0x8036878C@ha */
/* 80368C38  38 03 87 8C */	addi r0, r3, __StringRead@l /* 0x8036878C@l */
/* 80368C3C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80368C40  7C A3 2B 78 */	mr r3, r5
/* 80368C44  38 E1 00 10 */	addi r7, r1, 0x10
/* 80368C48  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80368C4C  7C 05 03 78 */	mr r5, r0
/* 80368C50  48 00 01 4D */	bl __strtoul
/* 80368C54  28 1F 00 00 */	cmplwi r31, 0
/* 80368C58  41 82 00 10 */	beq lbl_80368C68
/* 80368C5C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80368C60  7C 1E 02 14 */	add r0, r30, r0
/* 80368C64  90 1F 00 00 */	stw r0, 0(r31)
lbl_80368C68:
/* 80368C68  80 01 00 08 */	lwz r0, 8(r1)
/* 80368C6C  2C 00 00 00 */	cmpwi r0, 0
/* 80368C70  40 82 00 34 */	bne lbl_80368CA4
/* 80368C74  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80368C78  2C 05 00 00 */	cmpwi r5, 0
/* 80368C7C  40 82 00 14 */	bne lbl_80368C90
/* 80368C80  3C 80 80 00 */	lis r4, 0x8000 /* 0x7FFFFFFF@ha */
/* 80368C84  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x7FFFFFFF@l */
/* 80368C88  7C 03 00 40 */	cmplw r3, r0
/* 80368C8C  41 81 00 18 */	bgt lbl_80368CA4
lbl_80368C90:
/* 80368C90  2C 05 00 00 */	cmpwi r5, 0
/* 80368C94  41 82 00 38 */	beq lbl_80368CCC
/* 80368C98  3C 00 80 00 */	lis r0, 0x8000
/* 80368C9C  7C 03 00 40 */	cmplw r3, r0
/* 80368CA0  40 81 00 2C */	ble lbl_80368CCC
lbl_80368CA4:
/* 80368CA4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80368CA8  3C 60 80 00 */	lis r3, 0x8000 /* 0x7FFFFFFF@ha */
/* 80368CAC  38 00 00 22 */	li r0, 0x22
/* 80368CB0  7C 85 00 D0 */	neg r4, r5
/* 80368CB4  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x7FFFFFFF@l */
/* 80368CB8  7C 84 2B 78 */	or r4, r4, r5
/* 80368CBC  90 0D 94 28 */	stw r0, errno(r13)
/* 80368CC0  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80368CC4  7C 60 1A 14 */	add r3, r0, r3
/* 80368CC8  48 00 00 10 */	b lbl_80368CD8
lbl_80368CCC:
/* 80368CCC  2C 05 00 00 */	cmpwi r5, 0
/* 80368CD0  41 82 00 08 */	beq lbl_80368CD8
/* 80368CD4  7C 63 00 D0 */	neg r3, r3
lbl_80368CD8:
/* 80368CD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80368CDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80368CE0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80368CE4  7C 08 03 A6 */	mtlr r0
/* 80368CE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80368CEC  4E 80 00 20 */	blr 
