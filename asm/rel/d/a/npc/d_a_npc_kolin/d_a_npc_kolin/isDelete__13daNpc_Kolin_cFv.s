lbl_80554B30:
/* 80554B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554B34  7C 08 02 A6 */	mflr r0
/* 80554B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80554B40  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80554B44  28 00 00 0D */	cmplwi r0, 0xd
/* 80554B48  41 81 01 50 */	bgt lbl_80554C98
/* 80554B4C  3C 60 80 56 */	lis r3, lit_4557@ha /* 0x8055B118@ha */
/* 80554B50  38 63 B1 18 */	addi r3, r3, lit_4557@l /* 0x8055B118@l */
/* 80554B54  54 00 10 3A */	slwi r0, r0, 2
/* 80554B58  7C 03 00 2E */	lwzx r0, r3, r0
/* 80554B5C  7C 09 03 A6 */	mtctr r0
/* 80554B60  4E 80 04 20 */	bctr 
lbl_80554B64:
/* 80554B64  38 60 00 1F */	li r3, 0x1f
/* 80554B68  4B BF 7F 45 */	bl daNpcT_chkEvtBit__FUl
/* 80554B6C  48 00 01 30 */	b lbl_80554C9C
lbl_80554B70:
/* 80554B70  3B E0 00 00 */	li r31, 0
/* 80554B74  38 60 00 8E */	li r3, 0x8e
/* 80554B78  4B BF 7F 35 */	bl daNpcT_chkEvtBit__FUl
/* 80554B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80554B80  41 82 00 14 */	beq lbl_80554B94
/* 80554B84  38 60 00 0D */	li r3, 0xd
/* 80554B88  4B BF 7F 25 */	bl daNpcT_chkEvtBit__FUl
/* 80554B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80554B90  41 82 00 08 */	beq lbl_80554B98
lbl_80554B94:
/* 80554B94  3B E0 00 01 */	li r31, 1
lbl_80554B98:
/* 80554B98  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80554B9C  48 00 01 00 */	b lbl_80554C9C
lbl_80554BA0:
/* 80554BA0  38 60 00 00 */	li r3, 0
/* 80554BA4  48 00 00 F8 */	b lbl_80554C9C
lbl_80554BA8:
/* 80554BA8  38 60 00 A8 */	li r3, 0xa8
/* 80554BAC  4B BF 7F 01 */	bl daNpcT_chkEvtBit__FUl
/* 80554BB0  48 00 00 EC */	b lbl_80554C9C
lbl_80554BB4:
/* 80554BB4  38 60 00 00 */	li r3, 0
/* 80554BB8  48 00 00 E4 */	b lbl_80554C9C
lbl_80554BBC:
/* 80554BBC  3B E0 00 00 */	li r31, 0
/* 80554BC0  38 60 00 3D */	li r3, 0x3d
/* 80554BC4  4B BF 7E E9 */	bl daNpcT_chkEvtBit__FUl
/* 80554BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80554BCC  41 82 00 14 */	beq lbl_80554BE0
/* 80554BD0  38 60 00 A4 */	li r3, 0xa4
/* 80554BD4  4B BF 7E D9 */	bl daNpcT_chkEvtBit__FUl
/* 80554BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80554BDC  41 82 00 08 */	beq lbl_80554BE4
lbl_80554BE0:
/* 80554BE0  3B E0 00 01 */	li r31, 1
lbl_80554BE4:
/* 80554BE4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80554BE8  48 00 00 B4 */	b lbl_80554C9C
lbl_80554BEC:
/* 80554BEC  3B E0 00 00 */	li r31, 0
/* 80554BF0  38 60 00 A4 */	li r3, 0xa4
/* 80554BF4  4B BF 7E B9 */	bl daNpcT_chkEvtBit__FUl
/* 80554BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80554BFC  41 82 00 14 */	beq lbl_80554C10
/* 80554C00  38 60 00 35 */	li r3, 0x35
/* 80554C04  4B BF 7E A9 */	bl daNpcT_chkEvtBit__FUl
/* 80554C08  2C 03 00 00 */	cmpwi r3, 0
/* 80554C0C  41 82 00 08 */	beq lbl_80554C14
lbl_80554C10:
/* 80554C10  3B E0 00 01 */	li r31, 1
lbl_80554C14:
/* 80554C14  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80554C18  48 00 00 84 */	b lbl_80554C9C
lbl_80554C1C:
/* 80554C1C  38 60 01 08 */	li r3, 0x108
/* 80554C20  4B BF 7E 8D */	bl daNpcT_chkEvtBit__FUl
/* 80554C24  7C 60 00 34 */	cntlzw r0, r3
/* 80554C28  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80554C2C  48 00 00 70 */	b lbl_80554C9C
lbl_80554C30:
/* 80554C30  38 60 00 01 */	li r3, 1
/* 80554C34  48 00 00 68 */	b lbl_80554C9C
lbl_80554C38:
/* 80554C38  38 60 00 00 */	li r3, 0
/* 80554C3C  48 00 00 60 */	b lbl_80554C9C
lbl_80554C40:
/* 80554C40  3B E0 00 00 */	li r31, 0
/* 80554C44  38 60 00 44 */	li r3, 0x44
/* 80554C48  4B BF 7E 65 */	bl daNpcT_chkEvtBit__FUl
/* 80554C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80554C50  41 82 00 14 */	beq lbl_80554C64
/* 80554C54  38 60 01 08 */	li r3, 0x108
/* 80554C58  4B BF 7E 55 */	bl daNpcT_chkEvtBit__FUl
/* 80554C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80554C60  41 82 00 08 */	beq lbl_80554C68
lbl_80554C64:
/* 80554C64  3B E0 00 01 */	li r31, 1
lbl_80554C68:
/* 80554C68  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80554C6C  48 00 00 30 */	b lbl_80554C9C
lbl_80554C70:
/* 80554C70  38 60 00 12 */	li r3, 0x12
/* 80554C74  4B BF 7E 39 */	bl daNpcT_chkEvtBit__FUl
/* 80554C78  48 00 00 24 */	b lbl_80554C9C
lbl_80554C7C:
/* 80554C7C  38 60 00 12 */	li r3, 0x12
/* 80554C80  4B BF 7E 2D */	bl daNpcT_chkEvtBit__FUl
/* 80554C84  7C 60 00 34 */	cntlzw r0, r3
/* 80554C88  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80554C8C  48 00 00 10 */	b lbl_80554C9C
lbl_80554C90:
/* 80554C90  38 60 00 00 */	li r3, 0
/* 80554C94  48 00 00 08 */	b lbl_80554C9C
lbl_80554C98:
/* 80554C98  38 60 00 00 */	li r3, 0
lbl_80554C9C:
/* 80554C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80554CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554CA4  7C 08 03 A6 */	mtlr r0
/* 80554CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80554CAC  4E 80 00 20 */	blr 
