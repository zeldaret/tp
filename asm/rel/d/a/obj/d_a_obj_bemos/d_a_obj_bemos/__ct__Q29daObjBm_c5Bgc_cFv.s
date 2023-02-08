lbl_80BB0E0C:
/* 80BB0E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB0E10  7C 08 02 A6 */	mflr r0
/* 80BB0E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB0E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB0E1C  7C 7F 1B 78 */	mr r31, r3
/* 80BB0E20  38 7F 00 64 */	addi r3, r31, 0x64
/* 80BB0E24  3C 80 80 BB */	lis r4, __ct__4cXyzFv@ha /* 0x80BB0ED0@ha */
/* 80BB0E28  38 84 0E D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BB0ED0@l */
/* 80BB0E2C  3C A0 80 BB */	lis r5, __dt__4cXyzFv@ha /* 0x80BAF8BC@ha */
/* 80BB0E30  38 A5 F8 BC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BAF8BC@l */
/* 80BB0E34  38 C0 00 0C */	li r6, 0xc
/* 80BB0E38  38 E0 00 17 */	li r7, 0x17
/* 80BB0E3C  4B 7B 0F 25 */	bl __construct_array
/* 80BB0E40  38 60 00 00 */	li r3, 0
/* 80BB0E44  38 80 00 00 */	li r4, 0
/* 80BB0E48  3C A0 80 43 */	lis r5, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BB0E4C  38 C5 0C F4 */	addi r6, r5, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80BB0E50  3C A0 80 BB */	lis r5, lit_4250@ha /* 0x80BB3830@ha */
/* 80BB0E54  C0 25 38 30 */	lfs f1, lit_4250@l(r5)  /* 0x80BB3830@l */
/* 80BB0E58  38 00 00 17 */	li r0, 0x17
/* 80BB0E5C  7C 09 03 A6 */	mtctr r0
lbl_80BB0E60:
/* 80BB0E60  7C 3F 25 2E */	stfsx f1, r31, r4
/* 80BB0E64  C0 06 00 00 */	lfs f0, 0(r6)
/* 80BB0E68  7C BF 1A 14 */	add r5, r31, r3
/* 80BB0E6C  D0 05 00 64 */	stfs f0, 0x64(r5)
/* 80BB0E70  C0 06 00 04 */	lfs f0, 4(r6)
/* 80BB0E74  D0 05 00 68 */	stfs f0, 0x68(r5)
/* 80BB0E78  C0 06 00 08 */	lfs f0, 8(r6)
/* 80BB0E7C  D0 05 00 6C */	stfs f0, 0x6c(r5)
/* 80BB0E80  38 63 00 0C */	addi r3, r3, 0xc
/* 80BB0E84  38 84 00 04 */	addi r4, r4, 4
/* 80BB0E88  42 00 FF D8 */	bdnz lbl_80BB0E60
/* 80BB0E8C  38 00 FF FF */	li r0, -1
/* 80BB0E90  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80BB0E94  90 1F 01 78 */	stw r0, 0x178(r31)
/* 80BB0E98  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80BB0E9C  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80BB0EA0  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 80BB0EA4  3C 60 80 BB */	lis r3, lit_4250@ha /* 0x80BB3830@ha */
/* 80BB0EA8  C0 03 38 30 */	lfs f0, lit_4250@l(r3)  /* 0x80BB3830@l */
/* 80BB0EAC  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80BB0EB0  38 00 00 00 */	li r0, 0
/* 80BB0EB4  90 1F 01 80 */	stw r0, 0x180(r31)
/* 80BB0EB8  7F E3 FB 78 */	mr r3, r31
/* 80BB0EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB0EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB0EC4  7C 08 03 A6 */	mtlr r0
/* 80BB0EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB0ECC  4E 80 00 20 */	blr 
