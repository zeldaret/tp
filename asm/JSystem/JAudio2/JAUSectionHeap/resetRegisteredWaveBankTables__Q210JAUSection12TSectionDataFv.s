lbl_802A4FE4:
/* 802A4FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A4FE8  7C 08 02 A6 */	mflr r0
/* 802A4FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A4FF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4FF4  48 0B D1 E5 */	bl _savegpr_28
/* 802A4FF8  7C 7C 1B 78 */	mr r28, r3
/* 802A4FFC  3B A0 00 00 */	li r29, 0
/* 802A5000  3C 60 80 3D */	lis r3, __files@ha
/* 802A5004  38 63 29 B0 */	addi r3, r3, __files@l
/* 802A5008  3B C3 00 A0 */	addi r30, r3, 0xa0
/* 802A500C  3C 60 80 3A */	lis r3, JAUSectionHeap__stringBase0@ha
/* 802A5010  3B E3 B9 50 */	addi r31, r3, JAUSectionHeap__stringBase0@l
lbl_802A5014:
/* 802A5014  28 1D 00 FF */	cmplwi r29, 0xff
/* 802A5018  41 80 00 18 */	blt lbl_802A5030
/* 802A501C  7F C3 F3 78 */	mr r3, r30
/* 802A5020  7F E4 FB 78 */	mr r4, r31
/* 802A5024  4C C6 31 82 */	crclr 6
/* 802A5028  48 0C 17 75 */	bl fprintf
/* 802A502C  48 0B DA 91 */	bl abort
lbl_802A5030:
/* 802A5030  38 7C 00 34 */	addi r3, r28, 0x34
/* 802A5034  7F A4 EB 78 */	mr r4, r29
/* 802A5038  48 00 15 DD */	bl func_802A6614
/* 802A503C  3B BD 00 01 */	addi r29, r29, 1
/* 802A5040  28 1D 00 FF */	cmplwi r29, 0xff
/* 802A5044  41 80 FF D0 */	blt lbl_802A5014
/* 802A5048  39 61 00 20 */	addi r11, r1, 0x20
/* 802A504C  48 0B D1 D9 */	bl _restgpr_28
/* 802A5050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5054  7C 08 03 A6 */	mtlr r0
/* 802A5058  38 21 00 20 */	addi r1, r1, 0x20
/* 802A505C  4E 80 00 20 */	blr 
