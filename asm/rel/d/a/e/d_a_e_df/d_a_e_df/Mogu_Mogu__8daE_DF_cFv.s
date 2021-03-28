lbl_806A8C80:
/* 806A8C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A8C84  7C 08 02 A6 */	mflr r0
/* 806A8C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A8C8C  88 A3 05 BC */	lbz r5, 0x5bc(r3)
/* 806A8C90  28 05 00 04 */	cmplwi r5, 4
/* 806A8C94  40 81 00 14 */	ble lbl_806A8CA8
/* 806A8C98  38 00 00 00 */	li r0, 0
/* 806A8C9C  98 03 05 BC */	stb r0, 0x5bc(r3)
/* 806A8CA0  38 60 00 01 */	li r3, 1
/* 806A8CA4  48 00 00 E4 */	b lbl_806A8D88
lbl_806A8CA8:
/* 806A8CA8  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 806A8CAC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806A8CB0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806A8CB4  41 82 00 D0 */	beq lbl_806A8D84
/* 806A8CB8  38 05 00 01 */	addi r0, r5, 1
/* 806A8CBC  98 03 05 BC */	stb r0, 0x5bc(r3)
/* 806A8CC0  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 806A8CC4  2C 00 00 00 */	cmpwi r0, 0
/* 806A8CC8  41 82 00 2C */	beq lbl_806A8CF4
/* 806A8CCC  2C 00 00 01 */	cmpwi r0, 1
/* 806A8CD0  41 82 00 24 */	beq lbl_806A8CF4
/* 806A8CD4  2C 00 00 07 */	cmpwi r0, 7
/* 806A8CD8  41 82 00 1C */	beq lbl_806A8CF4
/* 806A8CDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806A8CE0  41 82 00 14 */	beq lbl_806A8CF4
/* 806A8CE4  2C 00 00 0C */	cmpwi r0, 0xc
/* 806A8CE8  41 82 00 0C */	beq lbl_806A8CF4
/* 806A8CEC  2C 00 00 0D */	cmpwi r0, 0xd
/* 806A8CF0  40 82 00 30 */	bne lbl_806A8D20
lbl_806A8CF4:
/* 806A8CF4  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070232@ha */
/* 806A8CF8  38 04 02 32 */	addi r0, r4, 0x0232 /* 0x00070232@l */
/* 806A8CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A8D00  38 81 00 10 */	addi r4, r1, 0x10
/* 806A8D04  38 A0 00 00 */	li r5, 0
/* 806A8D08  38 C0 FF FF */	li r6, -1
/* 806A8D0C  85 83 05 D8 */	lwzu r12, 0x5d8(r3)
/* 806A8D10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8D14  7D 89 03 A6 */	mtctr r12
/* 806A8D18  4E 80 04 21 */	bctrl 
/* 806A8D1C  48 00 00 60 */	b lbl_806A8D7C
lbl_806A8D20:
/* 806A8D20  2C 00 00 06 */	cmpwi r0, 6
/* 806A8D24  40 82 00 30 */	bne lbl_806A8D54
/* 806A8D28  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070233@ha */
/* 806A8D2C  38 04 02 33 */	addi r0, r4, 0x0233 /* 0x00070233@l */
/* 806A8D30  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A8D34  38 81 00 0C */	addi r4, r1, 0xc
/* 806A8D38  38 A0 00 00 */	li r5, 0
/* 806A8D3C  38 C0 FF FF */	li r6, -1
/* 806A8D40  85 83 05 D8 */	lwzu r12, 0x5d8(r3)
/* 806A8D44  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8D48  7D 89 03 A6 */	mtctr r12
/* 806A8D4C  4E 80 04 21 */	bctrl 
/* 806A8D50  48 00 00 2C */	b lbl_806A8D7C
lbl_806A8D54:
/* 806A8D54  3C 80 00 07 */	lis r4, 0x0007 /* 0x0007019F@ha */
/* 806A8D58  38 04 01 9F */	addi r0, r4, 0x019F /* 0x0007019F@l */
/* 806A8D5C  90 01 00 08 */	stw r0, 8(r1)
/* 806A8D60  38 81 00 08 */	addi r4, r1, 8
/* 806A8D64  38 A0 00 00 */	li r5, 0
/* 806A8D68  38 C0 FF FF */	li r6, -1
/* 806A8D6C  85 83 05 D8 */	lwzu r12, 0x5d8(r3)
/* 806A8D70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8D74  7D 89 03 A6 */	mtctr r12
/* 806A8D78  4E 80 04 21 */	bctrl 
lbl_806A8D7C:
/* 806A8D7C  38 60 00 00 */	li r3, 0
/* 806A8D80  48 00 00 08 */	b lbl_806A8D88
lbl_806A8D84:
/* 806A8D84  38 60 00 00 */	li r3, 0
lbl_806A8D88:
/* 806A8D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A8D8C  7C 08 03 A6 */	mtlr r0
/* 806A8D90  38 21 00 20 */	addi r1, r1, 0x20
/* 806A8D94  4E 80 00 20 */	blr 
