lbl_8055C3E0:
/* 8055C3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C3E4  7C 08 02 A6 */	mflr r0
/* 8055C3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C3F0  88 03 10 C0 */	lbz r0, 0x10c0(r3)
/* 8055C3F4  28 00 00 0F */	cmplwi r0, 0xf
/* 8055C3F8  41 81 02 04 */	bgt lbl_8055C5FC
/* 8055C3FC  3C 60 80 56 */	lis r3, lit_4915@ha
/* 8055C400  38 63 56 34 */	addi r3, r3, lit_4915@l
/* 8055C404  54 00 10 3A */	slwi r0, r0, 2
/* 8055C408  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055C40C  7C 09 03 A6 */	mtctr r0
/* 8055C410  4E 80 04 20 */	bctr 
lbl_8055C414:
/* 8055C414  3B E0 00 00 */	li r31, 0
/* 8055C418  38 60 00 12 */	li r3, 0x12
/* 8055C41C  4B BF 06 90 */	b daNpcT_chkEvtBit__FUl
/* 8055C420  2C 03 00 00 */	cmpwi r3, 0
/* 8055C424  41 82 00 14 */	beq lbl_8055C438
/* 8055C428  38 60 00 1F */	li r3, 0x1f
/* 8055C42C  4B BF 06 80 */	b daNpcT_chkEvtBit__FUl
/* 8055C430  2C 03 00 00 */	cmpwi r3, 0
/* 8055C434  41 82 00 08 */	beq lbl_8055C43C
lbl_8055C438:
/* 8055C438  3B E0 00 01 */	li r31, 1
lbl_8055C43C:
/* 8055C43C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C440  48 00 01 C0 */	b lbl_8055C600
lbl_8055C444:
/* 8055C444  38 60 00 12 */	li r3, 0x12
/* 8055C448  4B BF 06 64 */	b daNpcT_chkEvtBit__FUl
/* 8055C44C  7C 60 00 34 */	cntlzw r0, r3
/* 8055C450  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8055C454  48 00 01 AC */	b lbl_8055C600
lbl_8055C458:
/* 8055C458  38 60 00 01 */	li r3, 1
/* 8055C45C  48 00 01 A4 */	b lbl_8055C600
lbl_8055C460:
/* 8055C460  38 60 00 00 */	li r3, 0
/* 8055C464  48 00 01 9C */	b lbl_8055C600
lbl_8055C468:
/* 8055C468  3B E0 00 00 */	li r31, 0
/* 8055C46C  38 60 00 3D */	li r3, 0x3d
/* 8055C470  4B BF 06 3C */	b daNpcT_chkEvtBit__FUl
/* 8055C474  2C 03 00 00 */	cmpwi r3, 0
/* 8055C478  41 82 00 14 */	beq lbl_8055C48C
/* 8055C47C  38 60 00 A4 */	li r3, 0xa4
/* 8055C480  4B BF 06 2C */	b daNpcT_chkEvtBit__FUl
/* 8055C484  2C 03 00 00 */	cmpwi r3, 0
/* 8055C488  41 82 00 08 */	beq lbl_8055C490
lbl_8055C48C:
/* 8055C48C  3B E0 00 01 */	li r31, 1
lbl_8055C490:
/* 8055C490  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C494  48 00 01 6C */	b lbl_8055C600
lbl_8055C498:
/* 8055C498  3B E0 00 00 */	li r31, 0
/* 8055C49C  38 60 00 A4 */	li r3, 0xa4
/* 8055C4A0  4B BF 06 0C */	b daNpcT_chkEvtBit__FUl
/* 8055C4A4  2C 03 00 00 */	cmpwi r3, 0
/* 8055C4A8  41 82 00 14 */	beq lbl_8055C4BC
/* 8055C4AC  38 60 00 35 */	li r3, 0x35
/* 8055C4B0  4B BF 05 FC */	b daNpcT_chkEvtBit__FUl
/* 8055C4B4  2C 03 00 00 */	cmpwi r3, 0
/* 8055C4B8  41 82 00 08 */	beq lbl_8055C4C0
lbl_8055C4BC:
/* 8055C4BC  3B E0 00 01 */	li r31, 1
lbl_8055C4C0:
/* 8055C4C0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C4C4  48 00 01 3C */	b lbl_8055C600
lbl_8055C4C8:
/* 8055C4C8  3B E0 00 00 */	li r31, 0
/* 8055C4CC  38 60 00 35 */	li r3, 0x35
/* 8055C4D0  4B BF 05 DC */	b daNpcT_chkEvtBit__FUl
/* 8055C4D4  2C 03 00 00 */	cmpwi r3, 0
/* 8055C4D8  41 82 00 14 */	beq lbl_8055C4EC
/* 8055C4DC  38 60 00 55 */	li r3, 0x55
/* 8055C4E0  4B BF 05 CC */	b daNpcT_chkEvtBit__FUl
/* 8055C4E4  2C 03 00 00 */	cmpwi r3, 0
/* 8055C4E8  41 82 00 08 */	beq lbl_8055C4F0
lbl_8055C4EC:
/* 8055C4EC  3B E0 00 01 */	li r31, 1
lbl_8055C4F0:
/* 8055C4F0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C4F4  48 00 01 0C */	b lbl_8055C600
lbl_8055C4F8:
/* 8055C4F8  38 60 00 55 */	li r3, 0x55
/* 8055C4FC  4B BF 05 B0 */	b daNpcT_chkEvtBit__FUl
/* 8055C500  7C 60 00 34 */	cntlzw r0, r3
/* 8055C504  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8055C508  48 00 00 F8 */	b lbl_8055C600
lbl_8055C50C:
/* 8055C50C  38 60 00 40 */	li r3, 0x40
/* 8055C510  4B BF 05 9C */	b daNpcT_chkEvtBit__FUl
/* 8055C514  7C 60 00 34 */	cntlzw r0, r3
/* 8055C518  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8055C51C  48 00 00 E4 */	b lbl_8055C600
lbl_8055C520:
/* 8055C520  38 60 00 00 */	li r3, 0
/* 8055C524  48 00 00 DC */	b lbl_8055C600
lbl_8055C528:
/* 8055C528  38 60 00 13 */	li r3, 0x13
/* 8055C52C  4B BF 05 80 */	b daNpcT_chkEvtBit__FUl
/* 8055C530  48 00 00 D0 */	b lbl_8055C600
lbl_8055C534:
/* 8055C534  3B E0 00 00 */	li r31, 0
/* 8055C538  38 60 00 13 */	li r3, 0x13
/* 8055C53C  4B BF 05 70 */	b daNpcT_chkEvtBit__FUl
/* 8055C540  2C 03 00 00 */	cmpwi r3, 0
/* 8055C544  41 82 00 14 */	beq lbl_8055C558
/* 8055C548  38 60 00 12 */	li r3, 0x12
/* 8055C54C  4B BF 05 60 */	b daNpcT_chkEvtBit__FUl
/* 8055C550  2C 03 00 00 */	cmpwi r3, 0
/* 8055C554  41 82 00 08 */	beq lbl_8055C55C
lbl_8055C558:
/* 8055C558  3B E0 00 01 */	li r31, 1
lbl_8055C55C:
/* 8055C55C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C560  48 00 00 A0 */	b lbl_8055C600
lbl_8055C564:
/* 8055C564  3B E0 00 00 */	li r31, 0
/* 8055C568  38 60 00 12 */	li r3, 0x12
/* 8055C56C  4B BF 05 40 */	b daNpcT_chkEvtBit__FUl
/* 8055C570  2C 03 00 00 */	cmpwi r3, 0
/* 8055C574  41 82 00 14 */	beq lbl_8055C588
/* 8055C578  38 60 02 5C */	li r3, 0x25c
/* 8055C57C  4B BF 05 30 */	b daNpcT_chkEvtBit__FUl
/* 8055C580  2C 03 00 00 */	cmpwi r3, 0
/* 8055C584  41 82 00 08 */	beq lbl_8055C58C
lbl_8055C588:
/* 8055C588  3B E0 00 01 */	li r31, 1
lbl_8055C58C:
/* 8055C58C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C590  48 00 00 70 */	b lbl_8055C600
lbl_8055C594:
/* 8055C594  38 60 00 00 */	li r3, 0
/* 8055C598  48 00 00 68 */	b lbl_8055C600
lbl_8055C59C:
/* 8055C59C  3B E0 00 00 */	li r31, 0
/* 8055C5A0  38 60 02 5C */	li r3, 0x25c
/* 8055C5A4  4B BF 05 08 */	b daNpcT_chkEvtBit__FUl
/* 8055C5A8  2C 03 00 00 */	cmpwi r3, 0
/* 8055C5AC  41 82 00 14 */	beq lbl_8055C5C0
/* 8055C5B0  38 60 00 80 */	li r3, 0x80
/* 8055C5B4  4B BF 04 F8 */	b daNpcT_chkEvtBit__FUl
/* 8055C5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8055C5BC  41 82 00 08 */	beq lbl_8055C5C4
lbl_8055C5C0:
/* 8055C5C0  3B E0 00 01 */	li r31, 1
lbl_8055C5C4:
/* 8055C5C4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C5C8  48 00 00 38 */	b lbl_8055C600
lbl_8055C5CC:
/* 8055C5CC  3B E0 00 00 */	li r31, 0
/* 8055C5D0  38 60 00 80 */	li r3, 0x80
/* 8055C5D4  4B BF 04 D8 */	b daNpcT_chkEvtBit__FUl
/* 8055C5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8055C5DC  41 82 00 14 */	beq lbl_8055C5F0
/* 8055C5E0  38 60 02 35 */	li r3, 0x235
/* 8055C5E4  4B BF 04 C8 */	b daNpcT_chkEvtBit__FUl
/* 8055C5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8055C5EC  41 82 00 08 */	beq lbl_8055C5F4
lbl_8055C5F0:
/* 8055C5F0  3B E0 00 01 */	li r31, 1
lbl_8055C5F4:
/* 8055C5F4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8055C5F8  48 00 00 08 */	b lbl_8055C600
lbl_8055C5FC:
/* 8055C5FC  38 60 00 00 */	li r3, 0
lbl_8055C600:
/* 8055C600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C608  7C 08 03 A6 */	mtlr r0
/* 8055C60C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C610  4E 80 00 20 */	blr 
