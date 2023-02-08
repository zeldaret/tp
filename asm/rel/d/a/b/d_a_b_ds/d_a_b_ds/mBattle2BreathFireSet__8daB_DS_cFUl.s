lbl_805D3D14:
/* 805D3D14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D3D18  7C 08 02 A6 */	mflr r0
/* 805D3D1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D3D20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D3D24  7C 7F 1B 79 */	or. r31, r3, r3
/* 805D3D28  7C 85 23 78 */	mr r5, r4
/* 805D3D2C  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 805D3D30  7C 07 07 74 */	extsb r7, r0
/* 805D3D34  38 00 00 00 */	li r0, 0
/* 805D3D38  90 01 00 08 */	stw r0, 8(r1)
/* 805D3D3C  38 60 00 F6 */	li r3, 0xf6
/* 805D3D40  41 82 00 0C */	beq lbl_805D3D4C
/* 805D3D44  80 9F 00 04 */	lwz r4, 4(r31)
/* 805D3D48  48 00 00 08 */	b lbl_805D3D50
lbl_805D3D4C:
/* 805D3D4C  38 80 FF FF */	li r4, -1
lbl_805D3D50:
/* 805D3D50  38 DF 07 00 */	addi r6, r31, 0x700
/* 805D3D54  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805D3D58  39 20 00 00 */	li r9, 0
/* 805D3D5C  39 40 FF FF */	li r10, -1
/* 805D3D60  4B A4 61 91 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805D3D64  38 00 00 00 */	li r0, 0
/* 805D3D68  98 1F 08 5A */	stb r0, 0x85a(r31)
/* 805D3D6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D3D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D3D74  7C 08 03 A6 */	mtlr r0
/* 805D3D78  38 21 00 20 */	addi r1, r1, 0x20
/* 805D3D7C  4E 80 00 20 */	blr 
