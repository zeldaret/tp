lbl_802AB2D8:
/* 802AB2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB2DC  7C 08 02 A6 */	mflr r0
/* 802AB2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB2E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB2E8  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB2EC  7C 7F 1B 78 */	mr r31, r3
/* 802AB2F0  80 83 00 00 */	lwz r4, 0(r3)
/* 802AB2F4  48 00 00 1C */	b lbl_802AB310
lbl_802AB2F8:
/* 802AB2F8  80 64 00 00 */	lwz r3, 0(r4)
/* 802AB2FC  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB300  28 00 00 00 */	cmplwi r0, 0
/* 802AB304  40 82 00 08 */	bne lbl_802AB30C
/* 802AB308  48 00 00 B0 */	b lbl_802AB3B8
lbl_802AB30C:
/* 802AB30C  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802AB310:
/* 802AB310  28 04 00 00 */	cmplwi r4, 0
/* 802AB314  40 82 FF E4 */	bne lbl_802AB2F8
/* 802AB318  80 7F 00 08 */	lwz r3, 8(r31)
/* 802AB31C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 802AB320  7C 03 00 00 */	cmpw r3, r0
/* 802AB324  40 80 00 90 */	bge lbl_802AB3B4
/* 802AB328  88 0D 8D C8 */	lbz r0, data_80451348(r13)
/* 802AB32C  7C 00 07 75 */	extsb. r0, r0
/* 802AB330  40 82 00 34 */	bne lbl_802AB364
/* 802AB334  3C 60 80 43 */	lis r3, data_804341C4@ha
/* 802AB338  38 63 41 C4 */	addi r3, r3, data_804341C4@l
/* 802AB33C  4B FE 55 0D */	bl __ct__17JASGenericMemPoolFv
/* 802AB340  3C 60 80 43 */	lis r3, data_804341C4@ha
/* 802AB344  38 63 41 C4 */	addi r3, r3, data_804341C4@l
/* 802AB348  3C 80 80 2B */	lis r4, func_802AB200@ha
/* 802AB34C  38 84 B2 00 */	addi r4, r4, func_802AB200@l
/* 802AB350  3C A0 80 43 */	lis r5, lit_632@ha
/* 802AB354  38 A5 41 B8 */	addi r5, r5, lit_632@l
/* 802AB358  48 0B 68 CD */	bl __register_global_object
/* 802AB35C  38 00 00 01 */	li r0, 1
/* 802AB360  98 0D 8D C8 */	stb r0, data_80451348(r13)
lbl_802AB364:
/* 802AB364  3C 60 80 43 */	lis r3, data_804341C4@ha
/* 802AB368  38 63 41 C4 */	addi r3, r3, data_804341C4@l
/* 802AB36C  38 80 00 14 */	li r4, 0x14
/* 802AB370  4B FE 55 D9 */	bl alloc__17JASGenericMemPoolFUl
/* 802AB374  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB378  41 82 00 18 */	beq lbl_802AB390
/* 802AB37C  38 00 00 00 */	li r0, 0
/* 802AB380  90 03 00 00 */	stw r0, 0(r3)
/* 802AB384  7C 64 1B 78 */	mr r4, r3
/* 802AB388  38 64 00 04 */	addi r3, r4, 4
/* 802AB38C  48 03 0A 71 */	bl __ct__10JSUPtrLinkFPv
lbl_802AB390:
/* 802AB390  28 1E 00 00 */	cmplwi r30, 0
/* 802AB394  41 82 00 20 */	beq lbl_802AB3B4
/* 802AB398  7F C4 F3 78 */	mr r4, r30
/* 802AB39C  41 82 00 08 */	beq lbl_802AB3A4
/* 802AB3A0  38 9E 00 04 */	addi r4, r30, 4
lbl_802AB3A4:
/* 802AB3A4  7F E3 FB 78 */	mr r3, r31
/* 802AB3A8  48 03 0B A5 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802AB3AC  7F C3 F3 78 */	mr r3, r30
/* 802AB3B0  48 00 00 08 */	b lbl_802AB3B8
lbl_802AB3B4:
/* 802AB3B4  38 60 00 00 */	li r3, 0
lbl_802AB3B8:
/* 802AB3B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB3BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB3C4  7C 08 03 A6 */	mtlr r0
/* 802AB3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB3CC  4E 80 00 20 */	blr 
