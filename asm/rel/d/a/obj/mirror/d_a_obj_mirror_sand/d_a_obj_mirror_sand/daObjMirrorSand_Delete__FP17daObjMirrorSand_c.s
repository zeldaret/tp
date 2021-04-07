lbl_80C98708:
/* 80C98708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9870C  7C 08 02 A6 */	mflr r0
/* 80C98710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C98718  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9871C  41 82 00 84 */	beq lbl_80C987A0
/* 80C98720  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C98724  4B 5C FA B1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C98728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9872C  41 82 00 18 */	beq lbl_80C98744
/* 80C98730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C98738  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9873C  38 9F 05 7C */	addi r4, r31, 0x57c
/* 80C98740  4B 3D BB 11 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C98744:
/* 80C98744  38 7F 06 3C */	addi r3, r31, 0x63c
/* 80C98748  4B 5C FA 8D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9874C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C98750  41 82 00 18 */	beq lbl_80C98768
/* 80C98754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9875C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C98760  38 9F 06 3C */	addi r4, r31, 0x63c
/* 80C98764  4B 3D BA ED */	bl Release__4cBgSFP9dBgW_Base
lbl_80C98768:
/* 80C98768  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C9876C  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C989F0@ha */
/* 80C98770  38 84 89 F0 */	addi r4, r4, l_arcName@l /* 0x80C989F0@l */
/* 80C98774  80 84 00 00 */	lwz r4, 0(r4)
/* 80C98778  4B 39 48 91 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C9877C  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C98780  3C 80 80 CA */	lis r4, __dt__4dBgWFv@ha /* 0x80C987B8@ha */
/* 80C98784  38 84 87 B8 */	addi r4, r4, __dt__4dBgWFv@l /* 0x80C987B8@l */
/* 80C98788  38 A0 00 C0 */	li r5, 0xc0
/* 80C9878C  38 C0 00 02 */	li r6, 2
/* 80C98790  4B 6C 95 59 */	bl __destroy_arr
/* 80C98794  7F E3 FB 78 */	mr r3, r31
/* 80C98798  38 80 00 00 */	li r4, 0
/* 80C9879C  4B 38 04 F1 */	bl __dt__10fopAc_ac_cFv
lbl_80C987A0:
/* 80C987A0  38 60 00 01 */	li r3, 1
/* 80C987A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C987A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C987AC  7C 08 03 A6 */	mtlr r0
/* 80C987B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C987B4  4E 80 00 20 */	blr 
