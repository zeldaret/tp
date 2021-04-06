lbl_8057CC8C:
/* 8057CC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CC90  7C 08 02 A6 */	mflr r0
/* 8057CC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057CC9C  7C 7F 1B 78 */	mr r31, r3
/* 8057CCA0  38 7F 05 68 */	addi r3, r31, 0x568
/* 8057CCA4  3C 80 80 58 */	lis r4, d_a_obj_fmobj__stringBase0@ha /* 0x8057CF74@ha */
/* 8057CCA8  38 84 CF 74 */	addi r4, r4, d_a_obj_fmobj__stringBase0@l /* 0x8057CF74@l */
/* 8057CCAC  4B AB 03 5D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8057CCB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057CCB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057CCB8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057CCBC  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8057CCC0  4B AF 75 91 */	bl Release__4cBgSFP9dBgW_Base
/* 8057CCC4  38 60 00 01 */	li r3, 1
/* 8057CCC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057CCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CCD0  7C 08 03 A6 */	mtlr r0
/* 8057CCD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CCD8  4E 80 00 20 */	blr 
