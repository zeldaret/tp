lbl_805A8E3C:
/* 805A8E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8E40  7C 08 02 A6 */	mflr r0
/* 805A8E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8E4C  93 C1 00 08 */	stw r30, 8(r1)
/* 805A8E50  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A8E54  7C 9F 23 78 */	mr r31, r4
/* 805A8E58  41 82 00 28 */	beq lbl_805A8E80
/* 805A8E5C  3C 80 80 5B */	lis r4, __vt__17dPa_YkgrPcallBack@ha
/* 805A8E60  38 04 90 70 */	addi r0, r4, __vt__17dPa_YkgrPcallBack@l
/* 805A8E64  90 1E 00 00 */	stw r0, 0(r30)
/* 805A8E68  38 80 00 00 */	li r4, 0
/* 805A8E6C  4B CD 61 38 */	b __dt__19JPAParticleCallBackFv
/* 805A8E70  7F E0 07 35 */	extsh. r0, r31
/* 805A8E74  40 81 00 0C */	ble lbl_805A8E80
/* 805A8E78  7F C3 F3 78 */	mr r3, r30
/* 805A8E7C  4B D2 5E C0 */	b __dl__FPv
lbl_805A8E80:
/* 805A8E80  7F C3 F3 78 */	mr r3, r30
/* 805A8E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8E88  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A8E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8E90  7C 08 03 A6 */	mtlr r0
/* 805A8E94  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8E98  4E 80 00 20 */	blr 
