lbl_80D1F720:
/* 80D1F720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F724  7C 08 02 A6 */	mflr r0
/* 80D1F728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F730  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1F734  7C 7F 1B 78 */	mr r31, r3
/* 80D1F738  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D1F73C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D1F740  40 82 00 4C */	bne lbl_80D1F78C
/* 80D1F744  7F E0 FB 79 */	or. r0, r31, r31
/* 80D1F748  41 82 00 38 */	beq lbl_80D1F780
/* 80D1F74C  7C 1E 03 78 */	mr r30, r0
/* 80D1F750  4B 35 8E D4 */	b __ct__16dBgS_MoveBgActorFv
/* 80D1F754  3C 60 80 D2 */	lis r3, __vt__10daTreeSh_c@ha
/* 80D1F758  38 03 F9 48 */	addi r0, r3, __vt__10daTreeSh_c@l
/* 80D1F75C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D1F760  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D1F764  3C 80 80 D2 */	lis r4, __ct__5csXyzFv@ha
/* 80D1F768  38 84 F7 AC */	addi r4, r4, __ct__5csXyzFv@l
/* 80D1F76C  3C A0 80 D2 */	lis r5, __dt__5csXyzFv@ha
/* 80D1F770  38 A5 F1 0C */	addi r5, r5, __dt__5csXyzFv@l
/* 80D1F774  38 C0 00 06 */	li r6, 6
/* 80D1F778  38 E0 00 02 */	li r7, 2
/* 80D1F77C  4B 64 25 E4 */	b __construct_array
lbl_80D1F780:
/* 80D1F780  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D1F784  60 00 00 08 */	ori r0, r0, 8
/* 80D1F788  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D1F78C:
/* 80D1F78C  7F E3 FB 78 */	mr r3, r31
/* 80D1F790  4B FF FC 85 */	bl create1st__10daTreeSh_cFv
/* 80D1F794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F798  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1F79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F7A0  7C 08 03 A6 */	mtlr r0
/* 80D1F7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F7A8  4E 80 00 20 */	blr 
