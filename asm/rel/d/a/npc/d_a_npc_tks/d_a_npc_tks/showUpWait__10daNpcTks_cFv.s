lbl_80B17734:
/* 80B17734  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B17738  7C 08 02 A6 */	mflr r0
/* 80B1773C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B17740  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80B17744  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80B17748  7C 7E 1B 78 */	mr r30, r3
/* 80B1774C  3C 80 80 B2 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B1E0E4@ha */
/* 80B17750  3B E4 E0 E4 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B1E0E4@l */
/* 80B17754  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B17758  2C 00 00 02 */	cmpwi r0, 2
/* 80B1775C  41 82 00 70 */	beq lbl_80B177CC
/* 80B17760  40 80 03 F8 */	bge lbl_80B17B58
/* 80B17764  2C 00 00 00 */	cmpwi r0, 0
/* 80B17768  41 82 00 0C */	beq lbl_80B17774
/* 80B1776C  48 00 03 EC */	b lbl_80B17B58
/* 80B17770  48 00 03 E8 */	b lbl_80B17B58
lbl_80B17774:
/* 80B17774  38 80 00 06 */	li r4, 6
/* 80B17778  3C A0 80 B2 */	lis r5, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B1777C  C0 25 DE 1C */	lfs f1, lit_5011@l(r5)  /* 0x80B1DE1C@l */
/* 80B17780  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B17784  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B17788  7D 89 03 A6 */	mtctr r12
/* 80B1778C  4E 80 04 21 */	bctrl 
/* 80B17790  38 00 00 01 */	li r0, 1
/* 80B17794  98 1E 13 8A */	stb r0, 0x138a(r30)
/* 80B17798  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1779C  38 83 DD 58 */	addi r4, r3, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B177A0  80 64 00 74 */	lwz r3, 0x74(r4)
/* 80B177A4  80 04 00 78 */	lwz r0, 0x78(r4)
/* 80B177A8  7C 83 00 50 */	subf r4, r3, r0
/* 80B177AC  48 00 5B D9 */	bl func_80B1D384
/* 80B177B0  90 7E 13 70 */	stw r3, 0x1370(r30)
/* 80B177B4  3C 60 80 B2 */	lis r3, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B177B8  C0 03 DE 1C */	lfs f0, lit_5011@l(r3)  /* 0x80B1DE1C@l */
/* 80B177BC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B177C0  38 00 00 02 */	li r0, 2
/* 80B177C4  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B177C8  48 00 03 90 */	b lbl_80B17B58
lbl_80B177CC:
/* 80B177CC  80 7E 13 70 */	lwz r3, 0x1370(r30)
/* 80B177D0  34 03 FF FF */	addic. r0, r3, -1
/* 80B177D4  90 1E 13 70 */	stw r0, 0x1370(r30)
/* 80B177D8  41 81 02 F4 */	bgt lbl_80B17ACC
/* 80B177DC  80 1E 13 78 */	lwz r0, 0x1378(r30)
/* 80B177E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B177E4  40 82 01 30 */	bne lbl_80B17914
/* 80B177E8  38 60 00 00 */	li r3, 0
/* 80B177EC  38 80 00 02 */	li r4, 2
/* 80B177F0  48 00 5B 95 */	bl func_80B1D384
/* 80B177F4  2C 03 00 01 */	cmpwi r3, 1
/* 80B177F8  41 82 00 98 */	beq lbl_80B17890
/* 80B177FC  40 80 02 D0 */	bge lbl_80B17ACC
/* 80B17800  2C 03 00 00 */	cmpwi r3, 0
/* 80B17804  40 80 00 08 */	bge lbl_80B1780C
/* 80B17808  48 00 02 C4 */	b lbl_80B17ACC
lbl_80B1780C:
/* 80B1780C  80 7F 02 70 */	lwz r3, 0x270(r31)
/* 80B17810  80 1F 02 74 */	lwz r0, 0x274(r31)
/* 80B17814  90 61 00 44 */	stw r3, 0x44(r1)
/* 80B17818  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B1781C  80 1F 02 78 */	lwz r0, 0x278(r31)
/* 80B17820  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B17824  38 00 00 03 */	li r0, 3
/* 80B17828  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B1782C  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17830  4B 84 A7 E9 */	bl __ptmf_test
/* 80B17834  2C 03 00 00 */	cmpwi r3, 0
/* 80B17838  41 82 00 14 */	beq lbl_80B1784C
/* 80B1783C  7F C3 F3 78 */	mr r3, r30
/* 80B17840  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17844  4B 84 A8 41 */	bl __ptmf_scall
/* 80B17848  60 00 00 00 */	nop 
lbl_80B1784C:
/* 80B1784C  38 00 00 00 */	li r0, 0
/* 80B17850  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17854  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80B17858  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B1785C  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B17860  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B17864  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80B17868  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B1786C  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17870  4B 84 A7 A9 */	bl __ptmf_test
/* 80B17874  2C 03 00 00 */	cmpwi r3, 0
/* 80B17878  41 82 02 54 */	beq lbl_80B17ACC
/* 80B1787C  7F C3 F3 78 */	mr r3, r30
/* 80B17880  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17884  4B 84 A8 01 */	bl __ptmf_scall
/* 80B17888  60 00 00 00 */	nop 
/* 80B1788C  48 00 02 40 */	b lbl_80B17ACC
lbl_80B17890:
/* 80B17890  80 7F 02 7C */	lwz r3, 0x27c(r31)
/* 80B17894  80 1F 02 80 */	lwz r0, 0x280(r31)
/* 80B17898  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B1789C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B178A0  80 1F 02 84 */	lwz r0, 0x284(r31)
/* 80B178A4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B178A8  38 00 00 03 */	li r0, 3
/* 80B178AC  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B178B0  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B178B4  4B 84 A7 65 */	bl __ptmf_test
/* 80B178B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B178BC  41 82 00 14 */	beq lbl_80B178D0
/* 80B178C0  7F C3 F3 78 */	mr r3, r30
/* 80B178C4  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B178C8  4B 84 A7 BD */	bl __ptmf_scall
/* 80B178CC  60 00 00 00 */	nop 
lbl_80B178D0:
/* 80B178D0  38 00 00 00 */	li r0, 0
/* 80B178D4  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B178D8  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B178DC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B178E0  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B178E4  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B178E8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B178EC  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B178F0  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B178F4  4B 84 A7 25 */	bl __ptmf_test
/* 80B178F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B178FC  41 82 01 D0 */	beq lbl_80B17ACC
/* 80B17900  7F C3 F3 78 */	mr r3, r30
/* 80B17904  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17908  4B 84 A7 7D */	bl __ptmf_scall
/* 80B1790C  60 00 00 00 */	nop 
/* 80B17910  48 00 01 BC */	b lbl_80B17ACC
lbl_80B17914:
/* 80B17914  38 60 00 00 */	li r3, 0
/* 80B17918  38 80 00 03 */	li r4, 3
/* 80B1791C  48 00 5A 69 */	bl func_80B1D384
/* 80B17920  2C 03 00 01 */	cmpwi r3, 1
/* 80B17924  41 82 00 A4 */	beq lbl_80B179C8
/* 80B17928  40 80 00 10 */	bge lbl_80B17938
/* 80B1792C  2C 03 00 00 */	cmpwi r3, 0
/* 80B17930  40 80 00 14 */	bge lbl_80B17944
/* 80B17934  48 00 01 98 */	b lbl_80B17ACC
lbl_80B17938:
/* 80B17938  2C 03 00 03 */	cmpwi r3, 3
/* 80B1793C  40 80 01 90 */	bge lbl_80B17ACC
/* 80B17940  48 00 01 0C */	b lbl_80B17A4C
lbl_80B17944:
/* 80B17944  80 7F 02 88 */	lwz r3, 0x288(r31)
/* 80B17948  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 80B1794C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B17950  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B17954  80 1F 02 90 */	lwz r0, 0x290(r31)
/* 80B17958  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1795C  38 00 00 03 */	li r0, 3
/* 80B17960  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17964  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17968  4B 84 A6 B1 */	bl __ptmf_test
/* 80B1796C  2C 03 00 00 */	cmpwi r3, 0
/* 80B17970  41 82 00 14 */	beq lbl_80B17984
/* 80B17974  7F C3 F3 78 */	mr r3, r30
/* 80B17978  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B1797C  4B 84 A7 09 */	bl __ptmf_scall
/* 80B17980  60 00 00 00 */	nop 
lbl_80B17984:
/* 80B17984  38 00 00 00 */	li r0, 0
/* 80B17988  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B1798C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B17990  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B17994  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B17998  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B1799C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B179A0  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B179A4  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B179A8  4B 84 A6 71 */	bl __ptmf_test
/* 80B179AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B179B0  41 82 01 1C */	beq lbl_80B17ACC
/* 80B179B4  7F C3 F3 78 */	mr r3, r30
/* 80B179B8  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B179BC  4B 84 A6 C9 */	bl __ptmf_scall
/* 80B179C0  60 00 00 00 */	nop 
/* 80B179C4  48 00 01 08 */	b lbl_80B17ACC
lbl_80B179C8:
/* 80B179C8  80 7F 02 94 */	lwz r3, 0x294(r31)
/* 80B179CC  80 1F 02 98 */	lwz r0, 0x298(r31)
/* 80B179D0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B179D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B179D8  80 1F 02 9C */	lwz r0, 0x29c(r31)
/* 80B179DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B179E0  38 00 00 03 */	li r0, 3
/* 80B179E4  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B179E8  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B179EC  4B 84 A6 2D */	bl __ptmf_test
/* 80B179F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B179F4  41 82 00 14 */	beq lbl_80B17A08
/* 80B179F8  7F C3 F3 78 */	mr r3, r30
/* 80B179FC  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17A00  4B 84 A6 85 */	bl __ptmf_scall
/* 80B17A04  60 00 00 00 */	nop 
lbl_80B17A08:
/* 80B17A08  38 00 00 00 */	li r0, 0
/* 80B17A0C  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17A10  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B17A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B17A18  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B17A1C  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B17A20  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B17A24  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B17A28  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17A2C  4B 84 A5 ED */	bl __ptmf_test
/* 80B17A30  2C 03 00 00 */	cmpwi r3, 0
/* 80B17A34  41 82 00 98 */	beq lbl_80B17ACC
/* 80B17A38  7F C3 F3 78 */	mr r3, r30
/* 80B17A3C  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17A40  4B 84 A6 45 */	bl __ptmf_scall
/* 80B17A44  60 00 00 00 */	nop 
/* 80B17A48  48 00 00 84 */	b lbl_80B17ACC
lbl_80B17A4C:
/* 80B17A4C  80 7F 02 A0 */	lwz r3, 0x2a0(r31)
/* 80B17A50  80 1F 02 A4 */	lwz r0, 0x2a4(r31)
/* 80B17A54  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B17A58  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B17A5C  80 1F 02 A8 */	lwz r0, 0x2a8(r31)
/* 80B17A60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B17A64  38 00 00 03 */	li r0, 3
/* 80B17A68  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17A6C  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17A70  4B 84 A5 A9 */	bl __ptmf_test
/* 80B17A74  2C 03 00 00 */	cmpwi r3, 0
/* 80B17A78  41 82 00 14 */	beq lbl_80B17A8C
/* 80B17A7C  7F C3 F3 78 */	mr r3, r30
/* 80B17A80  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17A84  4B 84 A6 01 */	bl __ptmf_scall
/* 80B17A88  60 00 00 00 */	nop 
lbl_80B17A8C:
/* 80B17A8C  38 00 00 00 */	li r0, 0
/* 80B17A90  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17A94  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B17A98  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B17A9C  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B17AA0  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B17AA4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B17AA8  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B17AAC  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17AB0  4B 84 A5 69 */	bl __ptmf_test
/* 80B17AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B17AB8  41 82 00 14 */	beq lbl_80B17ACC
/* 80B17ABC  7F C3 F3 78 */	mr r3, r30
/* 80B17AC0  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17AC4  4B 84 A5 C1 */	bl __ptmf_scall
/* 80B17AC8  60 00 00 00 */	nop 
lbl_80B17ACC:
/* 80B17ACC  80 1E 13 78 */	lwz r0, 0x1378(r30)
/* 80B17AD0  2C 00 00 01 */	cmpwi r0, 1
/* 80B17AD4  40 82 00 84 */	bne lbl_80B17B58
/* 80B17AD8  80 7F 02 AC */	lwz r3, 0x2ac(r31)
/* 80B17ADC  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 80B17AE0  90 61 00 08 */	stw r3, 8(r1)
/* 80B17AE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B17AE8  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 80B17AEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B17AF0  38 00 00 03 */	li r0, 3
/* 80B17AF4  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17AF8  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17AFC  4B 84 A5 1D */	bl __ptmf_test
/* 80B17B00  2C 03 00 00 */	cmpwi r3, 0
/* 80B17B04  41 82 00 14 */	beq lbl_80B17B18
/* 80B17B08  7F C3 F3 78 */	mr r3, r30
/* 80B17B0C  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17B10  4B 84 A5 75 */	bl __ptmf_scall
/* 80B17B14  60 00 00 00 */	nop 
lbl_80B17B18:
/* 80B17B18  38 00 00 00 */	li r0, 0
/* 80B17B1C  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B17B20  80 61 00 08 */	lwz r3, 8(r1)
/* 80B17B24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B17B28  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B17B2C  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B17B30  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B17B34  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B17B38  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B17B3C  4B 84 A4 DD */	bl __ptmf_test
/* 80B17B40  2C 03 00 00 */	cmpwi r3, 0
/* 80B17B44  41 82 00 14 */	beq lbl_80B17B58
/* 80B17B48  7F C3 F3 78 */	mr r3, r30
/* 80B17B4C  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B17B50  4B 84 A5 35 */	bl __ptmf_scall
/* 80B17B54  60 00 00 00 */	nop 
lbl_80B17B58:
/* 80B17B58  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80B17B5C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80B17B60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B17B64  7C 08 03 A6 */	mtlr r0
/* 80B17B68  38 21 00 60 */	addi r1, r1, 0x60
/* 80B17B6C  4E 80 00 20 */	blr 
