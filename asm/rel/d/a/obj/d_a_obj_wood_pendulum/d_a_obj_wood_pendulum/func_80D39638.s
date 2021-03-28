lbl_80D39638:
/* 80D39638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3963C  7C 08 02 A6 */	mflr r0
/* 80D39640  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D39644  39 61 00 20 */	addi r11, r1, 0x20
/* 80D39648  4B 62 8B 94 */	b _savegpr_29
/* 80D3964C  7C 7F 1B 78 */	mr r31, r3
/* 80D39650  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D39654  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D39658  40 82 00 C8 */	bne lbl_80D39720
/* 80D3965C  7F E0 FB 79 */	or. r0, r31, r31
/* 80D39660  41 82 00 B4 */	beq lbl_80D39714
/* 80D39664  7C 1E 03 78 */	mr r30, r0
/* 80D39668  4B 2D F4 FC */	b __ct__10fopAc_ac_cFv
/* 80D3966C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D39670  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D39674  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80D39678  38 7E 05 90 */	addi r3, r30, 0x590
/* 80D3967C  4B 34 A0 E4 */	b __ct__10dCcD_GSttsFv
/* 80D39680  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D39684  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D39688  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80D3968C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D39690  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80D39694  3B BE 05 B0 */	addi r29, r30, 0x5b0
/* 80D39698  7F A3 EB 78 */	mr r3, r29
/* 80D3969C  4B 34 A3 8C */	b __ct__12dCcD_GObjInfFv
/* 80D396A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D396A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D396A8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D396AC  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D396B0  38 03 9D A4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D396B4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D396B8  3C 60 80 D4 */	lis r3, __vt__8cM3dGSph@ha
/* 80D396BC  38 03 9D 98 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D396C0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80D396C4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D396C8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80D396CC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D396D0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D396D4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80D396D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D396DC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80D396E0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D396E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D396E8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D396EC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D396F0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80D396F4  38 7E 06 E8 */	addi r3, r30, 0x6e8
/* 80D396F8  3C 80 80 D4 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80D396FC  38 84 97 98 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80D39700  3C A0 80 D4 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80D39704  38 A5 98 1C */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80D39708  38 C0 01 38 */	li r6, 0x138
/* 80D3970C  38 E0 00 02 */	li r7, 2
/* 80D39710  4B 62 86 50 */	b __construct_array
lbl_80D39714:
/* 80D39714  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D39718  60 00 00 08 */	ori r0, r0, 8
/* 80D3971C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D39720:
/* 80D39720  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D39724  3C 80 80 D4 */	lis r4, l_arcName@ha
/* 80D39728  38 84 9D 44 */	addi r4, r4, l_arcName@l
/* 80D3972C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D39730  4B 2F 37 8C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D39734  7C 7E 1B 78 */	mr r30, r3
/* 80D39738  2C 1E 00 04 */	cmpwi r30, 4
/* 80D3973C  40 82 00 40 */	bne lbl_80D3977C
/* 80D39740  7F E3 FB 78 */	mr r3, r31
/* 80D39744  3C 80 80 D4 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80D39748  38 84 93 F8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80D3974C  38 A0 1B E0 */	li r5, 0x1be0
/* 80D39750  4B 2E 0D 60 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D39754  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D39758  40 82 00 0C */	bne lbl_80D39764
/* 80D3975C  38 60 00 05 */	li r3, 5
/* 80D39760  48 00 00 20 */	b lbl_80D39780
lbl_80D39764:
/* 80D39764  7F E3 FB 78 */	mr r3, r31
/* 80D39768  4B FF FD 65 */	bl Create__13daObjWPndlm_cFv
/* 80D3976C  2C 03 00 00 */	cmpwi r3, 0
/* 80D39770  40 82 00 0C */	bne lbl_80D3977C
/* 80D39774  38 60 00 05 */	li r3, 5
/* 80D39778  48 00 00 08 */	b lbl_80D39780
lbl_80D3977C:
/* 80D3977C  7F C3 F3 78 */	mr r3, r30
lbl_80D39780:
/* 80D39780  39 61 00 20 */	addi r11, r1, 0x20
/* 80D39784  4B 62 8A A4 */	b _restgpr_29
/* 80D39788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3978C  7C 08 03 A6 */	mtlr r0
/* 80D39790  38 21 00 20 */	addi r1, r1, 0x20
/* 80D39794  4E 80 00 20 */	blr 
