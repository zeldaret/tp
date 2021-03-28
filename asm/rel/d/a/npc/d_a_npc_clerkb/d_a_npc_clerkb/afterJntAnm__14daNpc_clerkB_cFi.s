lbl_809970E0:
/* 809970E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809970E4  7C 08 02 A6 */	mflr r0
/* 809970E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809970EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809970F0  93 C1 00 08 */	stw r30, 8(r1)
/* 809970F4  7C 7E 1B 78 */	mr r30, r3
/* 809970F8  7C 9F 23 78 */	mr r31, r4
/* 809970FC  2C 1F 00 01 */	cmpwi r31, 1
/* 80997100  40 82 00 30 */	bne lbl_80997130
/* 80997104  A8 9E 0D 12 */	lha r4, 0xd12(r30)
/* 80997108  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099710C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80997110  4B 67 53 24 */	b mDoMtx_YrotM__FPA4_fs
/* 80997114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80997118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099711C  A8 1E 0D 0E */	lha r0, 0xd0e(r30)
/* 80997120  7C 00 00 D0 */	neg r0, r0
/* 80997124  7C 04 07 34 */	extsh r4, r0
/* 80997128  4B 67 53 A4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8099712C  48 00 00 2C */	b lbl_80997158
lbl_80997130:
/* 80997130  2C 1F 00 04 */	cmpwi r31, 4
/* 80997134  40 82 00 24 */	bne lbl_80997158
/* 80997138  A8 9E 0D 0C */	lha r4, 0xd0c(r30)
/* 8099713C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80997140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80997144  4B 67 52 F0 */	b mDoMtx_YrotM__FPA4_fs
/* 80997148  A8 9E 0D 08 */	lha r4, 0xd08(r30)
/* 8099714C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80997150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80997154  4B 67 53 78 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80997158:
/* 80997158  2C 1F 00 09 */	cmpwi r31, 9
/* 8099715C  40 82 00 14 */	bne lbl_80997170
/* 80997160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80997164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80997168  A8 9E 10 FA */	lha r4, 0x10fa(r30)
/* 8099716C  4B 67 52 30 */	b mDoMtx_XrotM__FPA4_fs
lbl_80997170:
/* 80997170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80997174  83 C1 00 08 */	lwz r30, 8(r1)
/* 80997178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099717C  7C 08 03 A6 */	mtlr r0
/* 80997180  38 21 00 10 */	addi r1, r1, 0x10
/* 80997184  4E 80 00 20 */	blr 
