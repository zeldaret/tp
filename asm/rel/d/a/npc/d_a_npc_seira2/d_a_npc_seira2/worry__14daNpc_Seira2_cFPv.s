lbl_80AD2F14:
/* 80AD2F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2F18  7C 08 02 A6 */	mflr r0
/* 80AD2F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD2F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD2F24  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD2F28  7C 7F 1B 78 */	mr r31, r3
/* 80AD2F2C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD2F30  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2F34  41 82 01 3C */	beq lbl_80AD3070
/* 80AD2F38  40 80 02 9C */	bge lbl_80AD31D4
/* 80AD2F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2F40  40 80 00 0C */	bge lbl_80AD2F4C
/* 80AD2F44  48 00 02 90 */	b lbl_80AD31D4
/* 80AD2F48  48 00 02 8C */	b lbl_80AD31D4
lbl_80AD2F4C:
/* 80AD2F4C  38 60 00 90 */	li r3, 0x90
/* 80AD2F50  4B 67 9B 5C */	b daNpcT_chkEvtBit__FUl
/* 80AD2F54  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2F58  41 82 00 68 */	beq lbl_80AD2FC0
/* 80AD2F5C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2F60  2C 00 00 06 */	cmpwi r0, 6
/* 80AD2F64  41 82 00 28 */	beq lbl_80AD2F8C
/* 80AD2F68  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2F6C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2F70  4B 67 29 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2F74  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2F78  38 00 00 06 */	li r0, 6
/* 80AD2F7C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2F80  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2F84  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2F88  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2F8C:
/* 80AD2F8C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2F90  2C 00 00 05 */	cmpwi r0, 5
/* 80AD2F94  41 82 00 8C */	beq lbl_80AD3020
/* 80AD2F98  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2F9C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2FA0  4B 67 28 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2FA4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2FA8  38 00 00 05 */	li r0, 5
/* 80AD2FAC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2FB0  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2FB4  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2FB8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AD2FBC  48 00 00 64 */	b lbl_80AD3020
lbl_80AD2FC0:
/* 80AD2FC0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2FC4  2C 00 00 05 */	cmpwi r0, 5
/* 80AD2FC8  41 82 00 28 */	beq lbl_80AD2FF0
/* 80AD2FCC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2FD0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2FD4  4B 67 28 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2FD8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2FDC  38 00 00 05 */	li r0, 5
/* 80AD2FE0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2FE4  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2FE8  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2FEC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2FF0:
/* 80AD2FF0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2FF4  2C 00 00 05 */	cmpwi r0, 5
/* 80AD2FF8  41 82 00 28 */	beq lbl_80AD3020
/* 80AD2FFC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD3000  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD3004  4B 67 28 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3008  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD300C  38 00 00 05 */	li r0, 5
/* 80AD3010  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD3014  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD3018  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD301C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD3020:
/* 80AD3020  38 00 00 00 */	li r0, 0
/* 80AD3024  98 1F 10 C0 */	stb r0, 0x10c0(r31)
/* 80AD3028  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD302C  2C 00 00 01 */	cmpwi r0, 1
/* 80AD3030  41 82 00 2C */	beq lbl_80AD305C
/* 80AD3034  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD3038  4B 67 26 C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD303C  38 00 00 00 */	li r0, 0
/* 80AD3040  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD3044  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD3048  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD304C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD3050  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD3054  38 00 00 01 */	li r0, 1
/* 80AD3058  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD305C:
/* 80AD305C  38 00 00 00 */	li r0, 0
/* 80AD3060  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD3064  90 1F 10 E4 */	stw r0, 0x10e4(r31)
/* 80AD3068  38 00 00 02 */	li r0, 2
/* 80AD306C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD3070:
/* 80AD3070  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD3074  2C 00 00 02 */	cmpwi r0, 2
/* 80AD3078  40 82 00 10 */	bne lbl_80AD3088
/* 80AD307C  38 00 00 01 */	li r0, 1
/* 80AD3080  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80AD3084  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AD3088:
/* 80AD3088  80 1F 10 E4 */	lwz r0, 0x10e4(r31)
/* 80AD308C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3090  40 82 01 3C */	bne lbl_80AD31CC
/* 80AD3094  38 60 00 5A */	li r3, 0x5a
/* 80AD3098  38 80 00 5A */	li r4, 0x5a
/* 80AD309C  48 00 16 39 */	bl func_80AD46D4
/* 80AD30A0  90 7F 10 E4 */	stw r3, 0x10e4(r31)
/* 80AD30A4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD30A8  2C 00 00 01 */	cmpwi r0, 1
/* 80AD30AC  41 82 00 3C */	beq lbl_80AD30E8
/* 80AD30B0  41 82 00 2C */	beq lbl_80AD30DC
/* 80AD30B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD30B8  4B 67 26 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD30BC  38 00 00 00 */	li r0, 0
/* 80AD30C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD30C4  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD30C8  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD30CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD30D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD30D4  38 00 00 01 */	li r0, 1
/* 80AD30D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD30DC:
/* 80AD30DC  38 00 00 00 */	li r0, 0
/* 80AD30E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD30E4  48 00 00 F0 */	b lbl_80AD31D4
lbl_80AD30E8:
/* 80AD30E8  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80AD30EC  4B 67 26 1C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AD30F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD30F4  41 82 00 9C */	beq lbl_80AD3190
/* 80AD30F8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD30FC  4B 67 26 0C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AD3100  7C 63 F0 50 */	subf r3, r3, r30
/* 80AD3104  30 03 FF FF */	addic r0, r3, -1
/* 80AD3108  7C 00 19 10 */	subfe r0, r0, r3
/* 80AD310C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AD3110  40 82 00 10 */	bne lbl_80AD3120
/* 80AD3114  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD3118  2C 00 00 02 */	cmpwi r0, 2
/* 80AD311C  41 82 00 34 */	beq lbl_80AD3150
lbl_80AD3120:
/* 80AD3120  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD3124  4B 67 25 D8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD3128  38 00 00 00 */	li r0, 0
/* 80AD312C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD3130  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD3134  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD3138  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD313C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD3140  38 00 00 02 */	li r0, 2
/* 80AD3144  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80AD3148  38 00 00 01 */	li r0, 1
/* 80AD314C  48 00 00 08 */	b lbl_80AD3154
lbl_80AD3150:
/* 80AD3150  38 00 00 00 */	li r0, 0
lbl_80AD3154:
/* 80AD3154  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3158  41 82 00 2C */	beq lbl_80AD3184
/* 80AD315C  7F C3 F3 78 */	mr r3, r30
/* 80AD3160  4B 54 5B 80 */	b fopAc_IsActor__FPv
/* 80AD3164  2C 03 00 00 */	cmpwi r3, 0
/* 80AD3168  41 82 00 1C */	beq lbl_80AD3184
/* 80AD316C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD3170  7F C4 F3 78 */	mr r4, r30
/* 80AD3174  4B 67 25 6C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AD3178  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD317C  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD3180  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_80AD3184:
/* 80AD3184  38 00 00 00 */	li r0, 0
/* 80AD3188  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD318C  48 00 00 48 */	b lbl_80AD31D4
lbl_80AD3190:
/* 80AD3190  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD3194  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3198  41 82 00 28 */	beq lbl_80AD31C0
/* 80AD319C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD31A0  4B 67 25 5C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD31A4  38 00 00 00 */	li r0, 0
/* 80AD31A8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD31AC  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD31B0  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD31B4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD31B8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD31BC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD31C0:
/* 80AD31C0  38 00 00 00 */	li r0, 0
/* 80AD31C4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD31C8  48 00 00 0C */	b lbl_80AD31D4
lbl_80AD31CC:
/* 80AD31CC  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80AD31D0  48 00 14 E9 */	bl func_80AD46B8
lbl_80AD31D4:
/* 80AD31D4  38 60 00 01 */	li r3, 1
/* 80AD31D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD31DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD31E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD31E4  7C 08 03 A6 */	mtlr r0
/* 80AD31E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD31EC  4E 80 00 20 */	blr 
