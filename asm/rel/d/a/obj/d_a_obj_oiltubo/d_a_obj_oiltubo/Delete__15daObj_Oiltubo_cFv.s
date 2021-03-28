lbl_80CA6C5C:
/* 80CA6C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6C60  7C 08 02 A6 */	mflr r0
/* 80CA6C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6C6C  7C 7F 1B 78 */	mr r31, r3
/* 80CA6C70  48 00 03 79 */	bl getResName__15daObj_Oiltubo_cFv
/* 80CA6C74  7C 64 1B 78 */	mr r4, r3
/* 80CA6C78  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CA6C7C  4B 38 63 8C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CA6C80  38 7F 0A A4 */	addi r3, r31, 0xaa4
/* 80CA6C84  4B 61 73 74 */	b deleteObject__14Z2SoundObjBaseFv
/* 80CA6C88  38 60 00 01 */	li r3, 1
/* 80CA6C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6C94  7C 08 03 A6 */	mtlr r0
/* 80CA6C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6C9C  4E 80 00 20 */	blr 
