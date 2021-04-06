lbl_80952E64:
/* 80952E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80952E68  7C 08 02 A6 */	mflr r0
/* 80952E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80952E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80952E74  93 C1 00 08 */	stw r30, 8(r1)
/* 80952E78  7C 7F 1B 78 */	mr r31, r3
/* 80952E7C  3C 80 80 95 */	lis r4, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 80952E80  3B C4 76 D0 */	addi r30, r4, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 80952E84  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80952E88  2C 00 00 02 */	cmpwi r0, 2
/* 80952E8C  41 82 00 B8 */	beq lbl_80952F44
/* 80952E90  40 80 00 10 */	bge lbl_80952EA0
/* 80952E94  2C 00 00 00 */	cmpwi r0, 0
/* 80952E98  41 82 00 18 */	beq lbl_80952EB0
/* 80952E9C  48 00 02 28 */	b lbl_809530C4
lbl_80952EA0:
/* 80952EA0  2C 00 00 04 */	cmpwi r0, 4
/* 80952EA4  41 82 01 64 */	beq lbl_80953008
/* 80952EA8  40 80 02 1C */	bge lbl_809530C4
/* 80952EAC  48 00 01 2C */	b lbl_80952FD8
lbl_80952EB0:
/* 80952EB0  48 00 0C DD */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 80952EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80952EB8  41 82 00 40 */	beq lbl_80952EF8
/* 80952EBC  80 7F 0F BC */	lwz r3, 0xfbc(r31)
/* 80952EC0  3C 03 00 01 */	addis r0, r3, 1
/* 80952EC4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80952EC8  40 82 00 30 */	bne lbl_80952EF8
/* 80952ECC  38 60 00 02 */	li r3, 2
/* 80952ED0  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 80952ED4  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80952ED8  38 A0 00 03 */	li r5, 3
/* 80952EDC  38 C0 00 00 */	li r6, 0
/* 80952EE0  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80952EE4  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 80952EE8  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 80952EEC  C0 9E 00 F4 */	lfs f4, 0xf4(r30)
/* 80952EF0  4B 90 E0 9D */	bl dTimer_createTimer__FlUlUcUcffff
/* 80952EF4  90 7F 0F BC */	stw r3, 0xfbc(r31)
lbl_80952EF8:
/* 80952EF8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80952EFC  4B 7F 28 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80952F00  28 03 00 00 */	cmplwi r3, 0
/* 80952F04  40 82 00 18 */	bne lbl_80952F1C
/* 80952F08  7F E3 FB 78 */	mr r3, r31
/* 80952F0C  4B FF F6 31 */	bl getUDoor_l_P__11daNpc_Aru_cFv
/* 80952F10  7C 64 1B 78 */	mr r4, r3
/* 80952F14  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80952F18  4B 7F 27 C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80952F1C:
/* 80952F1C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80952F20  4B 7F 27 E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80952F24  28 03 00 00 */	cmplwi r3, 0
/* 80952F28  40 82 01 9C */	bne lbl_809530C4
/* 80952F2C  7F E3 FB 78 */	mr r3, r31
/* 80952F30  4B FF F6 DD */	bl getUDoor_r_P__11daNpc_Aru_cFv
/* 80952F34  7C 64 1B 78 */	mr r4, r3
/* 80952F38  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80952F3C  4B 7F 27 A5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80952F40  48 00 01 84 */	b lbl_809530C4
lbl_80952F44:
/* 80952F44  48 00 0C 49 */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 80952F48  2C 03 00 00 */	cmpwi r3, 0
/* 80952F4C  41 82 00 40 */	beq lbl_80952F8C
/* 80952F50  80 7F 0F BC */	lwz r3, 0xfbc(r31)
/* 80952F54  3C 03 00 01 */	addis r0, r3, 1
/* 80952F58  28 00 FF FF */	cmplwi r0, 0xffff
/* 80952F5C  40 82 00 30 */	bne lbl_80952F8C
/* 80952F60  38 60 00 02 */	li r3, 2
/* 80952F64  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 80952F68  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80952F6C  38 A0 00 03 */	li r5, 3
/* 80952F70  38 C0 00 00 */	li r6, 0
/* 80952F74  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80952F78  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 80952F7C  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 80952F80  C0 9E 00 F4 */	lfs f4, 0xf4(r30)
/* 80952F84  4B 90 E0 09 */	bl dTimer_createTimer__FlUlUcUcffff
/* 80952F88  90 7F 0F BC */	stw r3, 0xfbc(r31)
lbl_80952F8C:
/* 80952F8C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80952F90  4B 7F 27 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80952F94  28 03 00 00 */	cmplwi r3, 0
/* 80952F98  40 82 00 18 */	bne lbl_80952FB0
/* 80952F9C  7F E3 FB 78 */	mr r3, r31
/* 80952FA0  4B FF F5 9D */	bl getUDoor_l_P__11daNpc_Aru_cFv
/* 80952FA4  7C 64 1B 78 */	mr r4, r3
/* 80952FA8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80952FAC  4B 7F 27 35 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80952FB0:
/* 80952FB0  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80952FB4  4B 7F 27 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80952FB8  28 03 00 00 */	cmplwi r3, 0
/* 80952FBC  40 82 01 08 */	bne lbl_809530C4
/* 80952FC0  7F E3 FB 78 */	mr r3, r31
/* 80952FC4  4B FF F6 49 */	bl getUDoor_r_P__11daNpc_Aru_cFv
/* 80952FC8  7C 64 1B 78 */	mr r4, r3
/* 80952FCC  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80952FD0  4B 7F 27 11 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80952FD4  48 00 00 F0 */	b lbl_809530C4
lbl_80952FD8:
/* 80952FD8  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80952FDC  4B 7F 27 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80952FE0  28 03 00 00 */	cmplwi r3, 0
/* 80952FE4  40 82 00 E0 */	bne lbl_809530C4
/* 80952FE8  7F E3 FB 78 */	mr r3, r31
/* 80952FEC  38 80 00 17 */	li r4, 0x17
/* 80952FF0  38 A0 00 00 */	li r5, 0
/* 80952FF4  4B 7F 8E F1 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80952FF8  7C 64 1B 78 */	mr r4, r3
/* 80952FFC  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80953000  4B 7F 26 E1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80953004  48 00 00 C0 */	b lbl_809530C4
lbl_80953008:
/* 80953008  48 00 0B 85 */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 8095300C  2C 03 00 00 */	cmpwi r3, 0
/* 80953010  41 82 00 40 */	beq lbl_80953050
/* 80953014  80 7F 0F BC */	lwz r3, 0xfbc(r31)
/* 80953018  3C 03 00 01 */	addis r0, r3, 1
/* 8095301C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80953020  40 82 00 30 */	bne lbl_80953050
/* 80953024  38 60 00 02 */	li r3, 2
/* 80953028  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 8095302C  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80953030  38 A0 00 02 */	li r5, 2
/* 80953034  38 C0 00 00 */	li r6, 0
/* 80953038  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8095303C  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 80953040  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 80953044  C0 9E 00 F4 */	lfs f4, 0xf4(r30)
/* 80953048  4B 90 DF 45 */	bl dTimer_createTimer__FlUlUcUcffff
/* 8095304C  90 7F 0F BC */	stw r3, 0xfbc(r31)
lbl_80953050:
/* 80953050  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80953054  4B 7F 26 B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80953058  28 03 00 00 */	cmplwi r3, 0
/* 8095305C  40 82 00 18 */	bne lbl_80953074
/* 80953060  7F E3 FB 78 */	mr r3, r31
/* 80953064  4B FF F4 D9 */	bl getUDoor_l_P__11daNpc_Aru_cFv
/* 80953068  7C 64 1B 78 */	mr r4, r3
/* 8095306C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80953070  4B 7F 26 71 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80953074:
/* 80953074  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80953078  4B 7F 26 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8095307C  28 03 00 00 */	cmplwi r3, 0
/* 80953080  40 82 00 18 */	bne lbl_80953098
/* 80953084  7F E3 FB 78 */	mr r3, r31
/* 80953088  4B FF F5 85 */	bl getUDoor_r_P__11daNpc_Aru_cFv
/* 8095308C  7C 64 1B 78 */	mr r4, r3
/* 80953090  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80953094  4B 7F 26 4D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80953098:
/* 80953098  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 8095309C  4B 7F 26 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809530A0  28 03 00 00 */	cmplwi r3, 0
/* 809530A4  40 82 00 20 */	bne lbl_809530C4
/* 809530A8  7F E3 FB 78 */	mr r3, r31
/* 809530AC  38 80 00 19 */	li r4, 0x19
/* 809530B0  38 A0 00 00 */	li r5, 0
/* 809530B4  4B 7F 8E 31 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 809530B8  7C 64 1B 78 */	mr r4, r3
/* 809530BC  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 809530C0  4B 7F 26 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_809530C4:
/* 809530C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809530C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809530CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809530D0  7C 08 03 A6 */	mtlr r0
/* 809530D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809530D8  4E 80 00 20 */	blr 
