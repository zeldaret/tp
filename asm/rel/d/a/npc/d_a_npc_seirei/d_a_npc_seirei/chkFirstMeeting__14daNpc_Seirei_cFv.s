lbl_80AD6A38:
/* 80AD6A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6A3C  7C 08 02 A6 */	mflr r0
/* 80AD6A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6A44  88 03 0E 44 */	lbz r0, 0xe44(r3)
/* 80AD6A48  2C 00 00 01 */	cmpwi r0, 1
/* 80AD6A4C  41 82 00 34 */	beq lbl_80AD6A80
/* 80AD6A50  40 80 00 10 */	bge lbl_80AD6A60
/* 80AD6A54  2C 00 00 00 */	cmpwi r0, 0
/* 80AD6A58  40 80 00 14 */	bge lbl_80AD6A6C
/* 80AD6A5C  48 00 00 4C */	b lbl_80AD6AA8
lbl_80AD6A60:
/* 80AD6A60  2C 00 00 03 */	cmpwi r0, 3
/* 80AD6A64  40 80 00 44 */	bge lbl_80AD6AA8
/* 80AD6A68  48 00 00 2C */	b lbl_80AD6A94
lbl_80AD6A6C:
/* 80AD6A6C  38 60 00 99 */	li r3, 0x99
/* 80AD6A70  4B 67 60 3C */	b daNpcT_chkEvtBit__FUl
/* 80AD6A74  7C 60 00 34 */	cntlzw r0, r3
/* 80AD6A78  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AD6A7C  48 00 00 30 */	b lbl_80AD6AAC
lbl_80AD6A80:
/* 80AD6A80  38 60 00 DD */	li r3, 0xdd
/* 80AD6A84  4B 67 60 28 */	b daNpcT_chkEvtBit__FUl
/* 80AD6A88  7C 60 00 34 */	cntlzw r0, r3
/* 80AD6A8C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AD6A90  48 00 00 1C */	b lbl_80AD6AAC
lbl_80AD6A94:
/* 80AD6A94  38 60 00 43 */	li r3, 0x43
/* 80AD6A98  4B 67 60 14 */	b daNpcT_chkEvtBit__FUl
/* 80AD6A9C  7C 60 00 34 */	cntlzw r0, r3
/* 80AD6AA0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AD6AA4  48 00 00 08 */	b lbl_80AD6AAC
lbl_80AD6AA8:
/* 80AD6AA8  38 60 00 00 */	li r3, 0
lbl_80AD6AAC:
/* 80AD6AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6AB0  7C 08 03 A6 */	mtlr r0
/* 80AD6AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6AB8  4E 80 00 20 */	blr 
