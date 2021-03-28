lbl_80B17B70:
/* 80B17B70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B17B74  7C 08 02 A6 */	mflr r0
/* 80B17B78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B17B7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B17B80  7C 7F 1B 78 */	mr r31, r3
/* 80B17B84  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B17B88  2C 00 00 02 */	cmpwi r0, 2
/* 80B17B8C  41 82 00 54 */	beq lbl_80B17BE0
/* 80B17B90  40 80 01 A0 */	bge lbl_80B17D30
/* 80B17B94  2C 00 00 00 */	cmpwi r0, 0
/* 80B17B98  41 82 00 0C */	beq lbl_80B17BA4
/* 80B17B9C  48 00 01 94 */	b lbl_80B17D30
/* 80B17BA0  48 00 01 90 */	b lbl_80B17D30
lbl_80B17BA4:
/* 80B17BA4  38 80 00 07 */	li r4, 7
/* 80B17BA8  3C A0 80 B2 */	lis r5, lit_5011@ha
/* 80B17BAC  C0 25 DE 1C */	lfs f1, lit_5011@l(r5)
/* 80B17BB0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B17BB4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B17BB8  7D 89 03 A6 */	mtctr r12
/* 80B17BBC  4E 80 04 21 */	bctrl 
/* 80B17BC0  38 00 00 01 */	li r0, 1
/* 80B17BC4  98 1F 13 8A */	stb r0, 0x138a(r31)
/* 80B17BC8  3C 60 80 B2 */	lis r3, lit_5011@ha
/* 80B17BCC  C0 03 DE 1C */	lfs f0, lit_5011@l(r3)
/* 80B17BD0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B17BD4  38 00 00 02 */	li r0, 2
/* 80B17BD8  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17BDC  48 00 01 54 */	b lbl_80B17D30
lbl_80B17BE0:
/* 80B17BE0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80B17BE4  38 A0 00 01 */	li r5, 1
/* 80B17BE8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B17BEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B17BF0  40 82 00 1C */	bne lbl_80B17C0C
/* 80B17BF4  3C 60 80 B2 */	lis r3, lit_5011@ha
/* 80B17BF8  C0 23 DE 1C */	lfs f1, lit_5011@l(r3)
/* 80B17BFC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B17C00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B17C04  41 82 00 08 */	beq lbl_80B17C0C
/* 80B17C08  38 A0 00 00 */	li r5, 0
lbl_80B17C0C:
/* 80B17C0C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B17C10  41 82 00 8C */	beq lbl_80B17C9C
/* 80B17C14  3C 60 80 B2 */	lis r3, lit_5632@ha
/* 80B17C18  38 83 E3 9C */	addi r4, r3, lit_5632@l
/* 80B17C1C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B17C20  80 04 00 04 */	lwz r0, 4(r4)
/* 80B17C24  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B17C28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B17C2C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B17C30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B17C34  38 00 00 03 */	li r0, 3
/* 80B17C38  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17C3C  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17C40  4B 84 A3 D8 */	b __ptmf_test
/* 80B17C44  2C 03 00 00 */	cmpwi r3, 0
/* 80B17C48  41 82 00 14 */	beq lbl_80B17C5C
/* 80B17C4C  7F E3 FB 78 */	mr r3, r31
/* 80B17C50  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17C54  4B 84 A4 30 */	b __ptmf_scall
/* 80B17C58  60 00 00 00 */	nop 
lbl_80B17C5C:
/* 80B17C5C  38 00 00 00 */	li r0, 0
/* 80B17C60  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17C64  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B17C68  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B17C6C  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B17C70  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B17C74  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B17C78  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B17C7C  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17C80  4B 84 A3 98 */	b __ptmf_test
/* 80B17C84  2C 03 00 00 */	cmpwi r3, 0
/* 80B17C88  41 82 00 14 */	beq lbl_80B17C9C
/* 80B17C8C  7F E3 FB 78 */	mr r3, r31
/* 80B17C90  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17C94  4B 84 A3 F0 */	b __ptmf_scall
/* 80B17C98  60 00 00 00 */	nop 
lbl_80B17C9C:
/* 80B17C9C  80 1F 13 78 */	lwz r0, 0x1378(r31)
/* 80B17CA0  2C 00 00 01 */	cmpwi r0, 1
/* 80B17CA4  40 82 00 8C */	bne lbl_80B17D30
/* 80B17CA8  3C 60 80 B2 */	lis r3, lit_5636@ha
/* 80B17CAC  38 83 E3 A8 */	addi r4, r3, lit_5636@l
/* 80B17CB0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B17CB4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B17CB8  90 61 00 08 */	stw r3, 8(r1)
/* 80B17CBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B17CC0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B17CC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B17CC8  38 00 00 03 */	li r0, 3
/* 80B17CCC  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17CD0  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17CD4  4B 84 A3 44 */	b __ptmf_test
/* 80B17CD8  2C 03 00 00 */	cmpwi r3, 0
/* 80B17CDC  41 82 00 14 */	beq lbl_80B17CF0
/* 80B17CE0  7F E3 FB 78 */	mr r3, r31
/* 80B17CE4  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17CE8  4B 84 A3 9C */	b __ptmf_scall
/* 80B17CEC  60 00 00 00 */	nop 
lbl_80B17CF0:
/* 80B17CF0  38 00 00 00 */	li r0, 0
/* 80B17CF4  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17CF8  80 61 00 08 */	lwz r3, 8(r1)
/* 80B17CFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B17D00  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B17D04  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B17D08  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B17D0C  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B17D10  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17D14  4B 84 A3 04 */	b __ptmf_test
/* 80B17D18  2C 03 00 00 */	cmpwi r3, 0
/* 80B17D1C  41 82 00 14 */	beq lbl_80B17D30
/* 80B17D20  7F E3 FB 78 */	mr r3, r31
/* 80B17D24  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17D28  4B 84 A3 5C */	b __ptmf_scall
/* 80B17D2C  60 00 00 00 */	nop 
lbl_80B17D30:
/* 80B17D30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B17D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B17D38  7C 08 03 A6 */	mtlr r0
/* 80B17D3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B17D40  4E 80 00 20 */	blr 
