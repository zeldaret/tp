lbl_802A1F58:
/* 802A1F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1F5C  7C 08 02 A6 */	mflr r0
/* 802A1F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1F68  7C 7F 1B 78 */	mr r31, r3
/* 802A1F6C  88 0D 8D A0 */	lbz r0, data_80451320(r13)
/* 802A1F70  7C 00 07 75 */	extsb. r0, r0
/* 802A1F74  40 82 00 34 */	bne lbl_802A1FA8
/* 802A1F78  3C 60 80 43 */	lis r3, data_804340CC@ha /* 0x804340CC@ha */
/* 802A1F7C  38 63 40 CC */	addi r3, r3, data_804340CC@l /* 0x804340CC@l */
/* 802A1F80  4B FE E8 C9 */	bl __ct__17JASGenericMemPoolFv
/* 802A1F84  3C 60 80 43 */	lis r3, data_804340CC@ha /* 0x804340CC@ha */
/* 802A1F88  38 63 40 CC */	addi r3, r3, data_804340CC@l /* 0x804340CC@l */
/* 802A1F8C  3C 80 80 2A */	lis r4, func_802A1AF4@ha /* 0x802A1AF4@ha */
/* 802A1F90  38 84 1A F4 */	addi r4, r4, func_802A1AF4@l /* 0x802A1AF4@l */
/* 802A1F94  3C A0 80 43 */	lis r5, lit_715@ha /* 0x804340C0@ha */
/* 802A1F98  38 A5 40 C0 */	addi r5, r5, lit_715@l /* 0x804340C0@l */
/* 802A1F9C  48 0B FC 89 */	bl __register_global_object
/* 802A1FA0  38 00 00 01 */	li r0, 1
/* 802A1FA4  98 0D 8D A0 */	stb r0, data_80451320(r13)
lbl_802A1FA8:
/* 802A1FA8  3C 60 80 43 */	lis r3, data_804340CC@ha /* 0x804340CC@ha */
/* 802A1FAC  38 63 40 CC */	addi r3, r3, data_804340CC@l /* 0x804340CC@l */
/* 802A1FB0  38 80 03 AC */	li r4, 0x3ac
/* 802A1FB4  4B FE E9 95 */	bl alloc__17JASGenericMemPoolFUl
/* 802A1FB8  7C 60 1B 79 */	or. r0, r3, r3
/* 802A1FBC  41 82 00 14 */	beq lbl_802A1FD0
/* 802A1FC0  7F E4 FB 78 */	mr r4, r31
/* 802A1FC4  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 802A1FC8  4B FF EA C5 */	bl func_802A0A8C
/* 802A1FCC  7C 60 1B 78 */	mr r0, r3
lbl_802A1FD0:
/* 802A1FD0  7C 03 03 78 */	mr r3, r0
/* 802A1FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A1FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A1FDC  7C 08 03 A6 */	mtlr r0
/* 802A1FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1FE4  4E 80 00 20 */	blr 
