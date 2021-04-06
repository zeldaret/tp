lbl_8053853C:
/* 8053853C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538540  7C 08 02 A6 */	mflr r0
/* 80538544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053854C  7C 7F 1B 78 */	mr r31, r3
/* 80538550  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 80538554  28 00 00 11 */	cmplwi r0, 0x11
/* 80538558  41 81 02 64 */	bgt lbl_805387BC
/* 8053855C  3C 60 80 54 */	lis r3, lit_4948@ha /* 0x8053FA34@ha */
/* 80538560  38 63 FA 34 */	addi r3, r3, lit_4948@l /* 0x8053FA34@l */
/* 80538564  54 00 10 3A */	slwi r0, r0, 2
/* 80538568  7C 03 00 2E */	lwzx r0, r3, r0
/* 8053856C  7C 09 03 A6 */	mtctr r0
/* 80538570  4E 80 04 20 */	bctr 
lbl_80538574:
/* 80538574  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80538578  4B C0 D1 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8053857C  28 03 00 00 */	cmplwi r3, 0
/* 80538580  40 82 00 1C */	bne lbl_8053859C
/* 80538584  7F E3 FB 78 */	mr r3, r31
/* 80538588  38 80 02 6E */	li r4, 0x26e
/* 8053858C  4B C1 38 A1 */	bl getNearestActorP__8daNpcT_cFs
/* 80538590  7C 64 1B 78 */	mr r4, r3
/* 80538594  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80538598  4B C0 D1 49 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8053859C:
/* 8053859C  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805385A0  4B C0 D1 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805385A4  28 03 00 00 */	cmplwi r3, 0
/* 805385A8  40 82 02 14 */	bne lbl_805387BC
/* 805385AC  7F E3 FB 78 */	mr r3, r31
/* 805385B0  38 80 02 60 */	li r4, 0x260
/* 805385B4  4B C1 38 79 */	bl getNearestActorP__8daNpcT_cFs
/* 805385B8  7C 64 1B 78 */	mr r4, r3
/* 805385BC  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805385C0  4B C0 D1 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805385C4  48 00 01 F8 */	b lbl_805387BC
lbl_805385C8:
/* 805385C8  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 805385CC  4B C0 D1 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805385D0  28 03 00 00 */	cmplwi r3, 0
/* 805385D4  40 82 01 E8 */	bne lbl_805387BC
/* 805385D8  7F E3 FB 78 */	mr r3, r31
/* 805385DC  38 80 02 50 */	li r4, 0x250
/* 805385E0  4B C1 38 4D */	bl getNearestActorP__8daNpcT_cFs
/* 805385E4  7C 64 1B 78 */	mr r4, r3
/* 805385E8  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 805385EC  4B C0 D0 F5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805385F0  48 00 01 CC */	b lbl_805387BC
lbl_805385F4:
/* 805385F4  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805385F8  4B C0 D1 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805385FC  28 03 00 00 */	cmplwi r3, 0
/* 80538600  40 82 00 1C */	bne lbl_8053861C
/* 80538604  7F E3 FB 78 */	mr r3, r31
/* 80538608  38 80 02 6E */	li r4, 0x26e
/* 8053860C  4B C1 38 21 */	bl getNearestActorP__8daNpcT_cFs
/* 80538610  7C 64 1B 78 */	mr r4, r3
/* 80538614  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80538618  4B C0 D0 C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8053861C:
/* 8053861C  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80538620  4B C0 D0 E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538624  28 03 00 00 */	cmplwi r3, 0
/* 80538628  40 82 01 94 */	bne lbl_805387BC
/* 8053862C  7F E3 FB 78 */	mr r3, r31
/* 80538630  38 80 02 60 */	li r4, 0x260
/* 80538634  4B C1 37 F9 */	bl getNearestActorP__8daNpcT_cFs
/* 80538638  7C 64 1B 78 */	mr r4, r3
/* 8053863C  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80538640  4B C0 D0 A1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80538644  48 00 01 78 */	b lbl_805387BC
lbl_80538648:
/* 80538648  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8053864C  4B C0 D0 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538650  28 03 00 00 */	cmplwi r3, 0
/* 80538654  40 82 00 1C */	bne lbl_80538670
/* 80538658  7F E3 FB 78 */	mr r3, r31
/* 8053865C  38 80 02 6E */	li r4, 0x26e
/* 80538660  4B C1 37 CD */	bl getNearestActorP__8daNpcT_cFs
/* 80538664  7C 64 1B 78 */	mr r4, r3
/* 80538668  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8053866C  4B C0 D0 75 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80538670:
/* 80538670  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80538674  4B C0 D0 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538678  28 03 00 00 */	cmplwi r3, 0
/* 8053867C  40 82 01 40 */	bne lbl_805387BC
/* 80538680  7F E3 FB 78 */	mr r3, r31
/* 80538684  38 80 02 60 */	li r4, 0x260
/* 80538688  4B C1 37 A5 */	bl getNearestActorP__8daNpcT_cFs
/* 8053868C  7C 64 1B 78 */	mr r4, r3
/* 80538690  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80538694  4B C0 D0 4D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80538698  48 00 01 24 */	b lbl_805387BC
lbl_8053869C:
/* 8053869C  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805386A0  4B C0 D0 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805386A4  28 03 00 00 */	cmplwi r3, 0
/* 805386A8  40 82 00 1C */	bne lbl_805386C4
/* 805386AC  7F E3 FB 78 */	mr r3, r31
/* 805386B0  38 80 02 6E */	li r4, 0x26e
/* 805386B4  4B C1 37 79 */	bl getNearestActorP__8daNpcT_cFs
/* 805386B8  7C 64 1B 78 */	mr r4, r3
/* 805386BC  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805386C0  4B C0 D0 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805386C4:
/* 805386C4  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 805386C8  4B C0 D0 41 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805386CC  28 03 00 00 */	cmplwi r3, 0
/* 805386D0  40 82 00 1C */	bne lbl_805386EC
/* 805386D4  7F E3 FB 78 */	mr r3, r31
/* 805386D8  38 80 02 5D */	li r4, 0x25d
/* 805386DC  4B C1 37 51 */	bl getNearestActorP__8daNpcT_cFs
/* 805386E0  7C 64 1B 78 */	mr r4, r3
/* 805386E4  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 805386E8  4B C0 CF F9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805386EC:
/* 805386EC  38 7F 10 E8 */	addi r3, r31, 0x10e8
/* 805386F0  4B C0 D0 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805386F4  28 03 00 00 */	cmplwi r3, 0
/* 805386F8  40 82 00 C4 */	bne lbl_805387BC
/* 805386FC  7F E3 FB 78 */	mr r3, r31
/* 80538700  38 80 02 64 */	li r4, 0x264
/* 80538704  4B C1 37 29 */	bl getNearestActorP__8daNpcT_cFs
/* 80538708  7C 64 1B 78 */	mr r4, r3
/* 8053870C  38 7F 10 E8 */	addi r3, r31, 0x10e8
/* 80538710  4B C0 CF D1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80538714  48 00 00 A8 */	b lbl_805387BC
lbl_80538718:
/* 80538718  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8053871C  4B C0 CF ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538720  28 03 00 00 */	cmplwi r3, 0
/* 80538724  40 82 00 1C */	bne lbl_80538740
/* 80538728  7F E3 FB 78 */	mr r3, r31
/* 8053872C  38 80 02 6E */	li r4, 0x26e
/* 80538730  4B C1 36 FD */	bl getNearestActorP__8daNpcT_cFs
/* 80538734  7C 64 1B 78 */	mr r4, r3
/* 80538738  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8053873C  4B C0 CF A5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80538740:
/* 80538740  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80538744  4B C0 CF C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538748  28 03 00 00 */	cmplwi r3, 0
/* 8053874C  40 82 00 70 */	bne lbl_805387BC
/* 80538750  7F E3 FB 78 */	mr r3, r31
/* 80538754  38 80 02 60 */	li r4, 0x260
/* 80538758  4B C1 36 D5 */	bl getNearestActorP__8daNpcT_cFs
/* 8053875C  7C 64 1B 78 */	mr r4, r3
/* 80538760  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80538764  4B C0 CF 7D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80538768  48 00 00 54 */	b lbl_805387BC
lbl_8053876C:
/* 8053876C  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 80538770  4B C0 CF 99 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538774  28 03 00 00 */	cmplwi r3, 0
/* 80538778  40 82 00 1C */	bne lbl_80538794
/* 8053877C  7F E3 FB 78 */	mr r3, r31
/* 80538780  38 80 02 54 */	li r4, 0x254
/* 80538784  4B C1 36 A9 */	bl getNearestActorP__8daNpcT_cFs
/* 80538788  7C 64 1B 78 */	mr r4, r3
/* 8053878C  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 80538790  4B C0 CF 51 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80538794:
/* 80538794  38 7F 10 F8 */	addi r3, r31, 0x10f8
/* 80538798  4B C0 CF 71 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8053879C  28 03 00 00 */	cmplwi r3, 0
/* 805387A0  40 82 00 1C */	bne lbl_805387BC
/* 805387A4  7F E3 FB 78 */	mr r3, r31
/* 805387A8  38 80 02 68 */	li r4, 0x268
/* 805387AC  4B C1 36 81 */	bl getNearestActorP__8daNpcT_cFs
/* 805387B0  7C 64 1B 78 */	mr r4, r3
/* 805387B4  38 7F 10 F8 */	addi r3, r31, 0x10f8
/* 805387B8  4B C0 CF 29 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805387BC:
/* 805387BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805387C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805387C4  7C 08 03 A6 */	mtlr r0
/* 805387C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805387CC  4E 80 00 20 */	blr 
