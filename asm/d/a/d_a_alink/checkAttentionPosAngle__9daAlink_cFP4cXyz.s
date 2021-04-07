lbl_800A07D8:
/* 800A07D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A07DC  7C 08 02 A6 */	mflr r0
/* 800A07E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A07E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A07E8  93 C1 00 08 */	stw r30, 8(r1)
/* 800A07EC  7C 7E 1B 78 */	mr r30, r3
/* 800A07F0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800A07F4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800A07F8  41 82 00 0C */	beq lbl_800A0804
/* 800A07FC  38 60 00 01 */	li r3, 1
/* 800A0800  48 00 00 50 */	b lbl_800A0850
lbl_800A0804:
/* 800A0804  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800A0808  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800A080C  40 82 00 10 */	bne lbl_800A081C
/* 800A0810  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800A0814  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800A0818  41 82 00 14 */	beq lbl_800A082C
lbl_800A081C:
/* 800A081C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha /* 0x8038E5A4@ha */
/* 800A0820  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l /* 0x8038E5A4@l */
/* 800A0824  AB E3 00 52 */	lha r31, 0x52(r3)
/* 800A0828  48 00 00 08 */	b lbl_800A0830
lbl_800A082C:
/* 800A082C  3B E0 60 00 */	li r31, 0x6000
lbl_800A0830:
/* 800A0830  38 7E 34 E0 */	addi r3, r30, 0x34e0
/* 800A0834  48 1D 03 D1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800A0838  A8 9E 2F E6 */	lha r4, 0x2fe6(r30)
/* 800A083C  48 1D 05 E9 */	bl cLib_distanceAngleS__Fss
/* 800A0840  7F E5 FE 70 */	srawi r5, r31, 0x1f
/* 800A0844  54 64 0F FE */	srwi r4, r3, 0x1f
/* 800A0848  7C 03 F8 10 */	subfc r0, r3, r31
/* 800A084C  7C 65 21 14 */	adde r3, r5, r4
lbl_800A0850:
/* 800A0850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A0854  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A0858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A085C  7C 08 03 A6 */	mtlr r0
/* 800A0860  38 21 00 10 */	addi r1, r1, 0x10
/* 800A0864  4E 80 00 20 */	blr 
