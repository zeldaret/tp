lbl_80100BB4:
/* 80100BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80100BB8  7C 08 02 A6 */	mflr r0
/* 80100BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80100BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80100BC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80100BC8  7C 7E 1B 78 */	mr r30, r3
/* 80100BCC  7C 9F 23 78 */	mr r31, r4
/* 80100BD0  38 80 00 87 */	li r4, 0x87
/* 80100BD4  4B FC 21 D1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80100BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80100BDC  40 82 00 0C */	bne lbl_80100BE8
/* 80100BE0  38 60 00 00 */	li r3, 0
/* 80100BE4  48 00 01 3C */	b lbl_80100D20
lbl_80100BE8:
/* 80100BE8  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 80100BEC  28 00 00 00 */	cmplwi r0, 0
/* 80100BF0  41 82 00 0C */	beq lbl_80100BFC
/* 80100BF4  28 00 00 01 */	cmplwi r0, 1
/* 80100BF8  40 82 00 C8 */	bne lbl_80100CC0
lbl_80100BFC:
/* 80100BFC  28 00 00 00 */	cmplwi r0, 0
/* 80100C00  40 82 00 64 */	bne lbl_80100C64
/* 80100C04  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80100C08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80100C0C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80100C10  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80100C14  7C 03 04 2E */	lfsx f0, r3, r0
/* 80100C18  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80100C1C  C0 42 92 9C */	lfs f2, lit_5944(r2)
/* 80100C20  EC 02 00 32 */	fmuls f0, f2, f0
/* 80100C24  EC 01 00 2A */	fadds f0, f1, f0
/* 80100C28  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80100C2C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80100C30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80100C34  7C 63 02 14 */	add r3, r3, r0
/* 80100C38  C0 03 00 04 */	lfs f0, 4(r3)
/* 80100C3C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80100C40  EC 02 00 32 */	fmuls f0, f2, f0
/* 80100C44  EC 01 00 2A */	fadds f0, f1, f0
/* 80100C48  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80100C4C  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 80100C50  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80100C54  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80100C58  EC 00 10 28 */	fsubs f0, f0, f2
/* 80100C5C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80100C60  48 00 00 60 */	b lbl_80100CC0
lbl_80100C64:
/* 80100C64  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80100C68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80100C6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80100C70  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80100C74  7C 03 04 2E */	lfsx f0, r3, r0
/* 80100C78  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80100C7C  C0 42 92 9C */	lfs f2, lit_5944(r2)
/* 80100C80  EC 02 00 32 */	fmuls f0, f2, f0
/* 80100C84  EC 01 00 28 */	fsubs f0, f1, f0
/* 80100C88  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80100C8C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80100C90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80100C94  7C 63 02 14 */	add r3, r3, r0
/* 80100C98  C0 03 00 04 */	lfs f0, 4(r3)
/* 80100C9C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80100CA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80100CA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80100CA8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80100CAC  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 80100CB0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80100CB4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80100CB8  EC 00 10 2A */	fadds f0, f0, f2
/* 80100CBC  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80100CC0:
/* 80100CC0  7F C3 F3 78 */	mr r3, r30
/* 80100CC4  38 80 00 A9 */	li r4, 0xa9
/* 80100CC8  3C A0 80 39 */	lis r5, m__22daAlinkHIO_roofHang_c0@ha /* 0x8038EBFC@ha */
/* 80100CCC  38 A5 EB FC */	addi r5, r5, m__22daAlinkHIO_roofHang_c0@l /* 0x8038EBFC@l */
/* 80100CD0  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 80100CD4  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 80100CD8  4B FA C3 09 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 80100CDC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80100CE0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80100CE4  7F C3 F3 78 */	mr r3, r30
/* 80100CE8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80100CEC  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 80100CF0  38 80 00 00 */	li r4, 0
/* 80100CF4  4B FB AA 7D */	bl setSpecialGravity__9daAlink_cFffi
/* 80100CF8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80100CFC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80100D00  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80100D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80100D08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80100D0C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80100D10  64 00 00 10 */	oris r0, r0, 0x10
/* 80100D14  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 80100D18  B3 FE 30 08 */	sth r31, 0x3008(r30)
/* 80100D1C  38 60 00 01 */	li r3, 1
lbl_80100D20:
/* 80100D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80100D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80100D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80100D2C  7C 08 03 A6 */	mtlr r0
/* 80100D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80100D34  4E 80 00 20 */	blr 
