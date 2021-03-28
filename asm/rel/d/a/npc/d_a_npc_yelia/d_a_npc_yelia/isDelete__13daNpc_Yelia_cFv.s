lbl_80B4DDF8:
/* 80B4DDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DDFC  7C 08 02 A6 */	mflr r0
/* 80B4DE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4DE08  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B4DE0C  28 00 00 08 */	cmplwi r0, 8
/* 80B4DE10  41 81 00 E8 */	bgt lbl_80B4DEF8
/* 80B4DE14  3C 60 80 B5 */	lis r3, lit_4592@ha
/* 80B4DE18  38 63 31 24 */	addi r3, r3, lit_4592@l
/* 80B4DE1C  54 00 10 3A */	slwi r0, r0, 2
/* 80B4DE20  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B4DE24  7C 09 03 A6 */	mtctr r0
/* 80B4DE28  4E 80 04 20 */	bctr 
lbl_80B4DE2C:
/* 80B4DE2C  38 60 00 00 */	li r3, 0
/* 80B4DE30  48 00 00 CC */	b lbl_80B4DEFC
lbl_80B4DE34:
/* 80B4DE34  38 60 00 00 */	li r3, 0
/* 80B4DE38  48 00 00 C4 */	b lbl_80B4DEFC
lbl_80B4DE3C:
/* 80B4DE3C  38 60 00 00 */	li r3, 0
/* 80B4DE40  48 00 00 BC */	b lbl_80B4DEFC
lbl_80B4DE44:
/* 80B4DE44  3B E0 00 00 */	li r31, 0
/* 80B4DE48  38 60 01 08 */	li r3, 0x108
/* 80B4DE4C  4B 5F EC 60 */	b daNpcT_chkEvtBit__FUl
/* 80B4DE50  2C 03 00 00 */	cmpwi r3, 0
/* 80B4DE54  41 82 00 14 */	beq lbl_80B4DE68
/* 80B4DE58  38 60 01 1F */	li r3, 0x11f
/* 80B4DE5C  4B 5F EC 50 */	b daNpcT_chkEvtBit__FUl
/* 80B4DE60  2C 03 00 00 */	cmpwi r3, 0
/* 80B4DE64  41 82 00 08 */	beq lbl_80B4DE6C
lbl_80B4DE68:
/* 80B4DE68  3B E0 00 01 */	li r31, 1
lbl_80B4DE6C:
/* 80B4DE6C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80B4DE70  48 00 00 8C */	b lbl_80B4DEFC
lbl_80B4DE74:
/* 80B4DE74  38 60 00 00 */	li r3, 0
/* 80B4DE78  48 00 00 84 */	b lbl_80B4DEFC
lbl_80B4DE7C:
/* 80B4DE7C  3B E0 00 00 */	li r31, 0
/* 80B4DE80  38 60 00 44 */	li r3, 0x44
/* 80B4DE84  4B 5F EC 28 */	b daNpcT_chkEvtBit__FUl
/* 80B4DE88  2C 03 00 00 */	cmpwi r3, 0
/* 80B4DE8C  41 82 00 14 */	beq lbl_80B4DEA0
/* 80B4DE90  38 60 01 08 */	li r3, 0x108
/* 80B4DE94  4B 5F EC 18 */	b daNpcT_chkEvtBit__FUl
/* 80B4DE98  2C 03 00 00 */	cmpwi r3, 0
/* 80B4DE9C  41 82 00 08 */	beq lbl_80B4DEA4
lbl_80B4DEA0:
/* 80B4DEA0  3B E0 00 01 */	li r31, 1
lbl_80B4DEA4:
/* 80B4DEA4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80B4DEA8  48 00 00 54 */	b lbl_80B4DEFC
lbl_80B4DEAC:
/* 80B4DEAC  3B E0 00 00 */	li r31, 0
/* 80B4DEB0  38 60 01 1F */	li r3, 0x11f
/* 80B4DEB4  4B 5F EB F8 */	b daNpcT_chkEvtBit__FUl
/* 80B4DEB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B4DEBC  41 82 00 14 */	beq lbl_80B4DED0
/* 80B4DEC0  38 60 01 20 */	li r3, 0x120
/* 80B4DEC4  4B 5F EB E8 */	b daNpcT_chkEvtBit__FUl
/* 80B4DEC8  2C 03 00 00 */	cmpwi r3, 0
/* 80B4DECC  41 82 00 08 */	beq lbl_80B4DED4
lbl_80B4DED0:
/* 80B4DED0  3B E0 00 01 */	li r31, 1
lbl_80B4DED4:
/* 80B4DED4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80B4DED8  48 00 00 24 */	b lbl_80B4DEFC
lbl_80B4DEDC:
/* 80B4DEDC  38 60 01 20 */	li r3, 0x120
/* 80B4DEE0  4B 5F EB CC */	b daNpcT_chkEvtBit__FUl
/* 80B4DEE4  7C 60 00 34 */	cntlzw r0, r3
/* 80B4DEE8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B4DEEC  48 00 00 10 */	b lbl_80B4DEFC
lbl_80B4DEF0:
/* 80B4DEF0  38 60 00 00 */	li r3, 0
/* 80B4DEF4  48 00 00 08 */	b lbl_80B4DEFC
lbl_80B4DEF8:
/* 80B4DEF8  38 60 00 00 */	li r3, 0
lbl_80B4DEFC:
/* 80B4DEFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4DF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DF04  7C 08 03 A6 */	mtlr r0
/* 80B4DF08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DF0C  4E 80 00 20 */	blr 
