lbl_80D2194C:
/* 80D2194C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21950  7C 08 02 A6 */	mflr r0
/* 80D21954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21958  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D2195C  38 84 1A 24 */	addi r4, r4, l_arcName@l
/* 80D21960  80 84 00 00 */	lwz r4, 0(r4)
/* 80D21964  38 63 05 68 */	addi r3, r3, 0x568
/* 80D21968  4B 30 B6 A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D2196C  38 60 00 01 */	li r3, 1
/* 80D21970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21974  7C 08 03 A6 */	mtlr r0
/* 80D21978  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2197C  4E 80 00 20 */	blr 
