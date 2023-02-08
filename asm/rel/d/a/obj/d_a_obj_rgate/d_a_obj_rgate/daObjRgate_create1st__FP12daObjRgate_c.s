lbl_80CBBFA0:
/* 80CBBFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBFA4  7C 08 02 A6 */	mflr r0
/* 80CBBFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBFAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBBFB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBBFB4  7C 7F 1B 78 */	mr r31, r3
/* 80CBBFB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CBBFBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CBBFC0  40 82 00 74 */	bne lbl_80CBC034
/* 80CBBFC4  7F E0 FB 79 */	or. r0, r31, r31
/* 80CBBFC8  41 82 00 60 */	beq lbl_80CBC028
/* 80CBBFCC  7C 1E 03 78 */	mr r30, r0
/* 80CBBFD0  4B 3B C6 55 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CBBFD4  3C 60 80 CC */	lis r3, __vt__12daObjRgate_c@ha /* 0x80CBC59C@ha */
/* 80CBBFD8  38 03 C5 9C */	addi r0, r3, __vt__12daObjRgate_c@l /* 0x80CBC59C@l */
/* 80CBBFDC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CBBFE0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CBBFE4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CBBFE8  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80CBBFEC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80CBBFF0  4B 3C 77 71 */	bl __ct__10dCcD_GSttsFv
/* 80CBBFF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CBBFF8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CBBFFC  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 80CBC000  38 03 00 20 */	addi r0, r3, 0x20
/* 80CBC004  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 80CBC008  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80CBC00C  3C 80 80 CC */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80CBC120@ha */
/* 80CBC010  38 84 C1 20 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80CBC120@l */
/* 80CBC014  3C A0 80 CC */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80CBC054@ha */
/* 80CBC018  38 A5 C0 54 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80CBC054@l */
/* 80CBC01C  38 C0 01 3C */	li r6, 0x13c
/* 80CBC020  38 E0 00 04 */	li r7, 4
/* 80CBC024  4B 6A 5D 3D */	bl __construct_array
lbl_80CBC028:
/* 80CBC028  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CBC02C  60 00 00 08 */	ori r0, r0, 8
/* 80CBC030  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CBC034:
/* 80CBC034  7F E3 FB 78 */	mr r3, r31
/* 80CBC038  4B FF E7 F1 */	bl create1st__12daObjRgate_cFv
/* 80CBC03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC040  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBC044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC048  7C 08 03 A6 */	mtlr r0
/* 80CBC04C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC050  4E 80 00 20 */	blr 
