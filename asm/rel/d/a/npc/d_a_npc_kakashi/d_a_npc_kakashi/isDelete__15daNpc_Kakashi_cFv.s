lbl_8054BC10:
/* 8054BC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BC14  7C 08 02 A6 */	mflr r0
/* 8054BC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BC1C  88 03 13 48 */	lbz r0, 0x1348(r3)
/* 8054BC20  2C 00 00 02 */	cmpwi r0, 2
/* 8054BC24  41 82 00 48 */	beq lbl_8054BC6C
/* 8054BC28  40 80 00 14 */	bge lbl_8054BC3C
/* 8054BC2C  2C 00 00 00 */	cmpwi r0, 0
/* 8054BC30  41 82 00 1C */	beq lbl_8054BC4C
/* 8054BC34  40 80 00 24 */	bge lbl_8054BC58
/* 8054BC38  48 00 00 4C */	b lbl_8054BC84
lbl_8054BC3C:
/* 8054BC3C  2C 00 00 04 */	cmpwi r0, 4
/* 8054BC40  41 82 00 3C */	beq lbl_8054BC7C
/* 8054BC44  40 80 00 40 */	bge lbl_8054BC84
/* 8054BC48  48 00 00 2C */	b lbl_8054BC74
lbl_8054BC4C:
/* 8054BC4C  38 60 00 12 */	li r3, 0x12
/* 8054BC50  4B C0 0E 5D */	bl daNpcT_chkEvtBit__FUl
/* 8054BC54  48 00 00 34 */	b lbl_8054BC88
lbl_8054BC58:
/* 8054BC58  38 60 00 12 */	li r3, 0x12
/* 8054BC5C  4B C0 0E 51 */	bl daNpcT_chkEvtBit__FUl
/* 8054BC60  7C 60 00 34 */	cntlzw r0, r3
/* 8054BC64  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8054BC68  48 00 00 20 */	b lbl_8054BC88
lbl_8054BC6C:
/* 8054BC6C  38 60 00 00 */	li r3, 0
/* 8054BC70  48 00 00 18 */	b lbl_8054BC88
lbl_8054BC74:
/* 8054BC74  38 60 00 00 */	li r3, 0
/* 8054BC78  48 00 00 10 */	b lbl_8054BC88
lbl_8054BC7C:
/* 8054BC7C  38 60 00 00 */	li r3, 0
/* 8054BC80  48 00 00 08 */	b lbl_8054BC88
lbl_8054BC84:
/* 8054BC84  38 60 00 00 */	li r3, 0
lbl_8054BC88:
/* 8054BC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BC8C  7C 08 03 A6 */	mtlr r0
/* 8054BC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BC94  4E 80 00 20 */	blr 
