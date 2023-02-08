lbl_802A4174:
/* 802A4174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4178  7C 08 02 A6 */	mflr r0
/* 802A417C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4184  93 C1 00 08 */	stw r30, 8(r1)
/* 802A4188  7C 7F 1B 78 */	mr r31, r3
/* 802A418C  80 03 00 68 */	lwz r0, 0x68(r3)
/* 802A4190  28 00 00 00 */	cmplwi r0, 0
/* 802A4194  40 82 00 0C */	bne lbl_802A41A0
/* 802A4198  38 60 00 00 */	li r3, 0
/* 802A419C  48 00 00 90 */	b lbl_802A422C
lbl_802A41A0:
/* 802A41A0  88 0D 8D A8 */	lbz r0, data_80451328(r13)
/* 802A41A4  7C 00 07 75 */	extsb. r0, r0
/* 802A41A8  40 82 00 34 */	bne lbl_802A41DC
/* 802A41AC  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A41B0  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A41B4  4B FE C6 95 */	bl __ct__17JASGenericMemPoolFv
/* 802A41B8  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A41BC  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A41C0  3C 80 80 2A */	lis r4, func_802A3E68@ha /* 0x802A3E68@ha */
/* 802A41C4  38 84 3E 68 */	addi r4, r4, func_802A3E68@l /* 0x802A3E68@l */
/* 802A41C8  3C A0 80 43 */	lis r5, lit_745@ha /* 0x804340F0@ha */
/* 802A41CC  38 A5 40 F0 */	addi r5, r5, lit_745@l /* 0x804340F0@l */
/* 802A41D0  48 0B DA 55 */	bl __register_global_object
/* 802A41D4  38 00 00 01 */	li r0, 1
/* 802A41D8  98 0D 8D A8 */	stb r0, data_80451328(r13)
lbl_802A41DC:
/* 802A41DC  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A41E0  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A41E4  38 80 02 C8 */	li r4, 0x2c8
/* 802A41E8  4B FE C7 61 */	bl alloc__17JASGenericMemPoolFUl
/* 802A41EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A41F0  41 82 00 14 */	beq lbl_802A4204
/* 802A41F4  7F E4 FB 78 */	mr r4, r31
/* 802A41F8  80 BF 00 6C */	lwz r5, 0x6c(r31)
/* 802A41FC  4B FF EF 09 */	bl func_802A3104
/* 802A4200  7C 7E 1B 78 */	mr r30, r3
lbl_802A4204:
/* 802A4204  28 1E 00 00 */	cmplwi r30, 0
/* 802A4208  40 82 00 0C */	bne lbl_802A4214
/* 802A420C  38 60 00 00 */	li r3, 0
/* 802A4210  48 00 00 1C */	b lbl_802A422C
lbl_802A4214:
/* 802A4214  7F C4 F3 78 */	mr r4, r30
/* 802A4218  41 82 00 08 */	beq lbl_802A4220
/* 802A421C  38 9E 00 98 */	addi r4, r30, 0x98
lbl_802A4220:
/* 802A4220  38 7F 00 58 */	addi r3, r31, 0x58
/* 802A4224  48 03 7D 29 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A4228  7F C3 F3 78 */	mr r3, r30
lbl_802A422C:
/* 802A422C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4230  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A4234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4238  7C 08 03 A6 */	mtlr r0
/* 802A423C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4240  4E 80 00 20 */	blr 
