lbl_80537B34:
/* 80537B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537B38  7C 08 02 A6 */	mflr r0
/* 80537B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537B44  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 80537B48  28 00 00 11 */	cmplwi r0, 0x11
/* 80537B4C  41 81 02 80 */	bgt lbl_80537DCC
/* 80537B50  3C 60 80 54 */	lis r3, lit_4668@ha /* 0x8053F924@ha */
/* 80537B54  38 63 F9 24 */	addi r3, r3, lit_4668@l /* 0x8053F924@l */
/* 80537B58  54 00 10 3A */	slwi r0, r0, 2
/* 80537B5C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80537B60  7C 09 03 A6 */	mtctr r0
/* 80537B64  4E 80 04 20 */	bctr 
lbl_80537B68:
/* 80537B68  3B E0 00 00 */	li r31, 0
/* 80537B6C  38 60 00 12 */	li r3, 0x12
/* 80537B70  4B C1 4F 3D */	bl daNpcT_chkEvtBit__FUl
/* 80537B74  2C 03 00 00 */	cmpwi r3, 0
/* 80537B78  41 82 00 14 */	beq lbl_80537B8C
/* 80537B7C  38 60 00 1F */	li r3, 0x1f
/* 80537B80  4B C1 4F 2D */	bl daNpcT_chkEvtBit__FUl
/* 80537B84  2C 03 00 00 */	cmpwi r3, 0
/* 80537B88  41 82 00 08 */	beq lbl_80537B90
lbl_80537B8C:
/* 80537B8C  3B E0 00 01 */	li r31, 1
lbl_80537B90:
/* 80537B90  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537B94  48 00 02 3C */	b lbl_80537DD0
lbl_80537B98:
/* 80537B98  38 60 00 12 */	li r3, 0x12
/* 80537B9C  4B C1 4F 11 */	bl daNpcT_chkEvtBit__FUl
/* 80537BA0  7C 60 00 34 */	cntlzw r0, r3
/* 80537BA4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80537BA8  48 00 02 28 */	b lbl_80537DD0
lbl_80537BAC:
/* 80537BAC  38 60 00 00 */	li r3, 0
/* 80537BB0  48 00 02 20 */	b lbl_80537DD0
lbl_80537BB4:
/* 80537BB4  3B E0 00 00 */	li r31, 0
/* 80537BB8  38 60 00 3D */	li r3, 0x3d
/* 80537BBC  4B C1 4E F1 */	bl daNpcT_chkEvtBit__FUl
/* 80537BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80537BC4  41 82 00 14 */	beq lbl_80537BD8
/* 80537BC8  38 60 00 A4 */	li r3, 0xa4
/* 80537BCC  4B C1 4E E1 */	bl daNpcT_chkEvtBit__FUl
/* 80537BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80537BD4  41 82 00 08 */	beq lbl_80537BDC
lbl_80537BD8:
/* 80537BD8  3B E0 00 01 */	li r31, 1
lbl_80537BDC:
/* 80537BDC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537BE0  48 00 01 F0 */	b lbl_80537DD0
lbl_80537BE4:
/* 80537BE4  3B E0 00 00 */	li r31, 0
/* 80537BE8  38 60 00 A4 */	li r3, 0xa4
/* 80537BEC  4B C1 4E C1 */	bl daNpcT_chkEvtBit__FUl
/* 80537BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80537BF4  41 82 00 14 */	beq lbl_80537C08
/* 80537BF8  38 60 00 35 */	li r3, 0x35
/* 80537BFC  4B C1 4E B1 */	bl daNpcT_chkEvtBit__FUl
/* 80537C00  2C 03 00 00 */	cmpwi r3, 0
/* 80537C04  41 82 00 08 */	beq lbl_80537C0C
lbl_80537C08:
/* 80537C08  3B E0 00 01 */	li r31, 1
lbl_80537C0C:
/* 80537C0C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537C10  48 00 01 C0 */	b lbl_80537DD0
lbl_80537C14:
/* 80537C14  3B E0 00 00 */	li r31, 0
/* 80537C18  38 60 00 35 */	li r3, 0x35
/* 80537C1C  4B C1 4E 91 */	bl daNpcT_chkEvtBit__FUl
/* 80537C20  2C 03 00 00 */	cmpwi r3, 0
/* 80537C24  41 82 00 14 */	beq lbl_80537C38
/* 80537C28  38 60 00 55 */	li r3, 0x55
/* 80537C2C  4B C1 4E 81 */	bl daNpcT_chkEvtBit__FUl
/* 80537C30  2C 03 00 00 */	cmpwi r3, 0
/* 80537C34  41 82 00 08 */	beq lbl_80537C3C
lbl_80537C38:
/* 80537C38  3B E0 00 01 */	li r31, 1
lbl_80537C3C:
/* 80537C3C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537C40  48 00 01 90 */	b lbl_80537DD0
lbl_80537C44:
/* 80537C44  3B E0 00 00 */	li r31, 0
/* 80537C48  38 60 00 55 */	li r3, 0x55
/* 80537C4C  4B C1 4E 61 */	bl daNpcT_chkEvtBit__FUl
/* 80537C50  2C 03 00 00 */	cmpwi r3, 0
/* 80537C54  41 82 00 14 */	beq lbl_80537C68
/* 80537C58  38 60 00 40 */	li r3, 0x40
/* 80537C5C  4B C1 4E 51 */	bl daNpcT_chkEvtBit__FUl
/* 80537C60  2C 03 00 00 */	cmpwi r3, 0
/* 80537C64  41 82 00 08 */	beq lbl_80537C6C
lbl_80537C68:
/* 80537C68  3B E0 00 01 */	li r31, 1
lbl_80537C6C:
/* 80537C6C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537C70  48 00 01 60 */	b lbl_80537DD0
lbl_80537C74:
/* 80537C74  3B E0 00 00 */	li r31, 0
/* 80537C78  38 60 00 40 */	li r3, 0x40
/* 80537C7C  4B C1 4E 31 */	bl daNpcT_chkEvtBit__FUl
/* 80537C80  2C 03 00 00 */	cmpwi r3, 0
/* 80537C84  41 82 00 14 */	beq lbl_80537C98
/* 80537C88  38 60 00 44 */	li r3, 0x44
/* 80537C8C  4B C1 4E 21 */	bl daNpcT_chkEvtBit__FUl
/* 80537C90  2C 03 00 00 */	cmpwi r3, 0
/* 80537C94  41 82 00 08 */	beq lbl_80537C9C
lbl_80537C98:
/* 80537C98  3B E0 00 01 */	li r31, 1
lbl_80537C9C:
/* 80537C9C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537CA0  48 00 01 30 */	b lbl_80537DD0
lbl_80537CA4:
/* 80537CA4  3B E0 00 00 */	li r31, 0
/* 80537CA8  38 60 00 44 */	li r3, 0x44
/* 80537CAC  4B C1 4E 01 */	bl daNpcT_chkEvtBit__FUl
/* 80537CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80537CB4  41 82 00 14 */	beq lbl_80537CC8
/* 80537CB8  38 60 01 08 */	li r3, 0x108
/* 80537CBC  4B C1 4D F1 */	bl daNpcT_chkEvtBit__FUl
/* 80537CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80537CC4  41 82 00 08 */	beq lbl_80537CCC
lbl_80537CC8:
/* 80537CC8  3B E0 00 01 */	li r31, 1
lbl_80537CCC:
/* 80537CCC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537CD0  48 00 01 00 */	b lbl_80537DD0
lbl_80537CD4:
/* 80537CD4  38 60 00 00 */	li r3, 0
/* 80537CD8  48 00 00 F8 */	b lbl_80537DD0
lbl_80537CDC:
/* 80537CDC  38 60 01 08 */	li r3, 0x108
/* 80537CE0  4B C1 4D CD */	bl daNpcT_chkEvtBit__FUl
/* 80537CE4  7C 60 00 34 */	cntlzw r0, r3
/* 80537CE8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80537CEC  48 00 00 E4 */	b lbl_80537DD0
lbl_80537CF0:
/* 80537CF0  38 60 00 13 */	li r3, 0x13
/* 80537CF4  4B C1 4D B9 */	bl daNpcT_chkEvtBit__FUl
/* 80537CF8  48 00 00 D8 */	b lbl_80537DD0
lbl_80537CFC:
/* 80537CFC  3B E0 00 00 */	li r31, 0
/* 80537D00  38 60 00 13 */	li r3, 0x13
/* 80537D04  4B C1 4D A9 */	bl daNpcT_chkEvtBit__FUl
/* 80537D08  2C 03 00 00 */	cmpwi r3, 0
/* 80537D0C  41 82 00 14 */	beq lbl_80537D20
/* 80537D10  38 60 00 12 */	li r3, 0x12
/* 80537D14  4B C1 4D 99 */	bl daNpcT_chkEvtBit__FUl
/* 80537D18  2C 03 00 00 */	cmpwi r3, 0
/* 80537D1C  41 82 00 08 */	beq lbl_80537D24
lbl_80537D20:
/* 80537D20  3B E0 00 01 */	li r31, 1
lbl_80537D24:
/* 80537D24  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537D28  48 00 00 A8 */	b lbl_80537DD0
lbl_80537D2C:
/* 80537D2C  3B E0 00 00 */	li r31, 0
/* 80537D30  38 60 00 12 */	li r3, 0x12
/* 80537D34  4B C1 4D 79 */	bl daNpcT_chkEvtBit__FUl
/* 80537D38  2C 03 00 00 */	cmpwi r3, 0
/* 80537D3C  41 82 00 14 */	beq lbl_80537D50
/* 80537D40  38 60 02 5C */	li r3, 0x25c
/* 80537D44  4B C1 4D 69 */	bl daNpcT_chkEvtBit__FUl
/* 80537D48  2C 03 00 00 */	cmpwi r3, 0
/* 80537D4C  41 82 00 08 */	beq lbl_80537D54
lbl_80537D50:
/* 80537D50  3B E0 00 01 */	li r31, 1
lbl_80537D54:
/* 80537D54  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537D58  48 00 00 78 */	b lbl_80537DD0
lbl_80537D5C:
/* 80537D5C  38 60 00 00 */	li r3, 0
/* 80537D60  48 00 00 70 */	b lbl_80537DD0
lbl_80537D64:
/* 80537D64  3B E0 00 00 */	li r31, 0
/* 80537D68  38 60 02 5C */	li r3, 0x25c
/* 80537D6C  4B C1 4D 41 */	bl daNpcT_chkEvtBit__FUl
/* 80537D70  2C 03 00 00 */	cmpwi r3, 0
/* 80537D74  41 82 00 14 */	beq lbl_80537D88
/* 80537D78  38 60 00 80 */	li r3, 0x80
/* 80537D7C  4B C1 4D 31 */	bl daNpcT_chkEvtBit__FUl
/* 80537D80  2C 03 00 00 */	cmpwi r3, 0
/* 80537D84  41 82 00 08 */	beq lbl_80537D8C
lbl_80537D88:
/* 80537D88  3B E0 00 01 */	li r31, 1
lbl_80537D8C:
/* 80537D8C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537D90  48 00 00 40 */	b lbl_80537DD0
lbl_80537D94:
/* 80537D94  3B E0 00 00 */	li r31, 0
/* 80537D98  38 60 00 80 */	li r3, 0x80
/* 80537D9C  4B C1 4D 11 */	bl daNpcT_chkEvtBit__FUl
/* 80537DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80537DA4  41 82 00 14 */	beq lbl_80537DB8
/* 80537DA8  38 60 02 35 */	li r3, 0x235
/* 80537DAC  4B C1 4D 01 */	bl daNpcT_chkEvtBit__FUl
/* 80537DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80537DB4  41 82 00 08 */	beq lbl_80537DBC
lbl_80537DB8:
/* 80537DB8  3B E0 00 01 */	li r31, 1
lbl_80537DBC:
/* 80537DBC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80537DC0  48 00 00 10 */	b lbl_80537DD0
lbl_80537DC4:
/* 80537DC4  38 60 00 00 */	li r3, 0
/* 80537DC8  48 00 00 08 */	b lbl_80537DD0
lbl_80537DCC:
/* 80537DCC  38 60 00 00 */	li r3, 0
lbl_80537DD0:
/* 80537DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537DD8  7C 08 03 A6 */	mtlr r0
/* 80537DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80537DE0  4E 80 00 20 */	blr 
