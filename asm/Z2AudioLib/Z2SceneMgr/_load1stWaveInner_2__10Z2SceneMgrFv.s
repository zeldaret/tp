lbl_802B9FC8:
/* 802B9FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9FCC  7C 08 02 A6 */	mflr r0
/* 802B9FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9FD8  7C 7F 1B 78 */	mr r31, r3
/* 802B9FDC  88 83 00 14 */	lbz r4, 0x14(r3)
/* 802B9FE0  28 04 00 00 */	cmplwi r4, 0
/* 802B9FE4  41 82 00 1C */	beq lbl_802BA000
/* 802B9FE8  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 802B9FEC  7C 00 20 40 */	cmplw r0, r4
/* 802B9FF0  41 82 00 10 */	beq lbl_802BA000
/* 802B9FF4  48 00 06 3D */	bl eraseBgmWave__10Z2SceneMgrFUl
/* 802B9FF8  38 00 00 00 */	li r0, 0
/* 802B9FFC  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_802BA000:
/* 802BA000  88 7F 00 11 */	lbz r3, 0x11(r31)
/* 802BA004  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 802BA008  7C 03 00 40 */	cmplw r3, r0
/* 802BA00C  41 82 00 7C */	beq lbl_802BA088
/* 802BA010  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 802BA014  28 04 00 00 */	cmplwi r4, 0
/* 802BA018  41 82 00 1C */	beq lbl_802BA034
/* 802BA01C  7F E3 FB 78 */	mr r3, r31
/* 802BA020  48 00 06 11 */	bl eraseBgmWave__10Z2SceneMgrFUl
/* 802BA024  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA028  41 82 00 0C */	beq lbl_802BA034
/* 802BA02C  38 00 00 00 */	li r0, 0
/* 802BA030  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_802BA034:
/* 802BA034  88 9F 00 12 */	lbz r4, 0x12(r31)
/* 802BA038  28 04 00 00 */	cmplwi r4, 0
/* 802BA03C  41 82 00 1C */	beq lbl_802BA058
/* 802BA040  7F E3 FB 78 */	mr r3, r31
/* 802BA044  48 00 05 ED */	bl eraseBgmWave__10Z2SceneMgrFUl
/* 802BA048  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA04C  41 82 00 0C */	beq lbl_802BA058
/* 802BA050  38 00 00 00 */	li r0, 0
/* 802BA054  98 1F 00 12 */	stb r0, 0x12(r31)
lbl_802BA058:
/* 802BA058  88 9F 00 11 */	lbz r4, 0x11(r31)
/* 802BA05C  28 04 00 00 */	cmplwi r4, 0
/* 802BA060  41 82 00 20 */	beq lbl_802BA080
/* 802BA064  7F E3 FB 78 */	mr r3, r31
/* 802BA068  48 00 07 09 */	bl loadBgmWave__10Z2SceneMgrFUl
/* 802BA06C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA070  41 82 00 10 */	beq lbl_802BA080
/* 802BA074  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 802BA078  98 1F 00 12 */	stb r0, 0x12(r31)
/* 802BA07C  48 00 00 0C */	b lbl_802BA088
lbl_802BA080:
/* 802BA080  38 00 00 00 */	li r0, 0
/* 802BA084  98 1F 00 12 */	stb r0, 0x12(r31)
lbl_802BA088:
/* 802BA088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BA08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA090  7C 08 03 A6 */	mtlr r0
/* 802BA094  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA098  4E 80 00 20 */	blr 
