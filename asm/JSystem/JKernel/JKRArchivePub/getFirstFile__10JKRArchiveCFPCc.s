lbl_802D61B0:
/* 802D61B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D61B4  7C 08 02 A6 */	mflr r0
/* 802D61B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D61BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D61C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D61C4  7C 7E 1B 78 */	mr r30, r3
/* 802D61C8  88 04 00 00 */	lbz r0, 0(r4)
/* 802D61CC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D61D0  40 82 00 28 */	bne lbl_802D61F8
/* 802D61D4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D61D8  7C 00 07 75 */	extsb. r0, r0
/* 802D61DC  40 82 00 08 */	bne lbl_802D61E4
/* 802D61E0  38 80 00 00 */	li r4, 0
lbl_802D61E4:
/* 802D61E4  7F C3 F3 78 */	mr r3, r30
/* 802D61E8  38 A0 00 00 */	li r5, 0
/* 802D61EC  48 00 02 31 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 802D61F0  7C 7F 1B 78 */	mr r31, r3
/* 802D61F4  48 00 00 10 */	b lbl_802D6204
lbl_802D61F8:
/* 802D61F8  80 AD 8E A0 */	lwz r5, sCurrentDirID__10JKRArchive(r13)
/* 802D61FC  48 00 02 21 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 802D6200  7C 7F 1B 78 */	mr r31, r3
lbl_802D6204:
/* 802D6204  28 1F 00 00 */	cmplwi r31, 0
/* 802D6208  41 82 00 38 */	beq lbl_802D6240
/* 802D620C  38 60 00 24 */	li r3, 0x24
/* 802D6210  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D6214  38 A0 00 00 */	li r5, 0
/* 802D6218  4B FF 8A 81 */	bl __nw__FUlP7JKRHeapi
/* 802D621C  7C 60 1B 79 */	or. r0, r3, r3
/* 802D6220  41 82 00 18 */	beq lbl_802D6238
/* 802D6224  7F C4 F3 78 */	mr r4, r30
/* 802D6228  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802D622C  A0 DF 00 0A */	lhz r6, 0xa(r31)
/* 802D6230  4B FF E4 09 */	bl __ct__12JKRArcFinderFP10JKRArchivell
/* 802D6234  7C 60 1B 78 */	mr r0, r3
lbl_802D6238:
/* 802D6238  7C 03 03 78 */	mr r3, r0
/* 802D623C  48 00 00 08 */	b lbl_802D6244
lbl_802D6240:
/* 802D6240  38 60 00 00 */	li r3, 0
lbl_802D6244:
/* 802D6244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6248  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D624C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6250  7C 08 03 A6 */	mtlr r0
/* 802D6254  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6258  4E 80 00 20 */	blr 
