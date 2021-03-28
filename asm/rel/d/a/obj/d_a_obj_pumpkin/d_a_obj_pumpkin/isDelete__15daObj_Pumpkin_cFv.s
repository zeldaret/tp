lbl_80CB7844:
/* 80CB7844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB7848  7C 08 02 A6 */	mflr r0
/* 80CB784C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB7850  88 03 0B 1C */	lbz r0, 0xb1c(r3)
/* 80CB7854  2C 00 00 02 */	cmpwi r0, 2
/* 80CB7858  41 82 00 40 */	beq lbl_80CB7898
/* 80CB785C  40 80 00 14 */	bge lbl_80CB7870
/* 80CB7860  2C 00 00 00 */	cmpwi r0, 0
/* 80CB7864  41 82 00 18 */	beq lbl_80CB787C
/* 80CB7868  40 80 00 1C */	bge lbl_80CB7884
/* 80CB786C  48 00 00 48 */	b lbl_80CB78B4
lbl_80CB7870:
/* 80CB7870  2C 00 00 04 */	cmpwi r0, 4
/* 80CB7874  40 80 00 40 */	bge lbl_80CB78B4
/* 80CB7878  48 00 00 34 */	b lbl_80CB78AC
lbl_80CB787C:
/* 80CB787C  38 60 00 00 */	li r3, 0
/* 80CB7880  48 00 00 38 */	b lbl_80CB78B8
lbl_80CB7884:
/* 80CB7884  38 60 00 1E */	li r3, 0x1e
/* 80CB7888  4B 49 52 24 */	b daNpcT_chkEvtBit__FUl
/* 80CB788C  7C 60 00 34 */	cntlzw r0, r3
/* 80CB7890  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80CB7894  48 00 00 24 */	b lbl_80CB78B8
lbl_80CB7898:
/* 80CB7898  38 60 00 92 */	li r3, 0x92
/* 80CB789C  4B 49 52 10 */	b daNpcT_chkEvtBit__FUl
/* 80CB78A0  7C 60 00 34 */	cntlzw r0, r3
/* 80CB78A4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80CB78A8  48 00 00 10 */	b lbl_80CB78B8
lbl_80CB78AC:
/* 80CB78AC  38 60 00 00 */	li r3, 0
/* 80CB78B0  48 00 00 08 */	b lbl_80CB78B8
lbl_80CB78B4:
/* 80CB78B4  38 60 00 00 */	li r3, 0
lbl_80CB78B8:
/* 80CB78B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB78BC  7C 08 03 A6 */	mtlr r0
/* 80CB78C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB78C4  4E 80 00 20 */	blr 
