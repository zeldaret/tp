.include "macros.inc"

.section .text, "ax" # 80023578


.global fpcSch_JudgeForPName
fpcSch_JudgeForPName:
/* 80023578 000204B8  A8 A3 00 08 */	lha r5, 8(r3)
/* 8002357C 000204BC  A8 04 00 00 */	lha r0, 0(r4)
/* 80023580 000204C0  7C 05 00 00 */	cmpw r5, r0
/* 80023584 000204C4  4D 82 00 20 */	beqlr 
/* 80023588 000204C8  38 60 00 00 */	li r3, 0
/* 8002358C 000204CC  4E 80 00 20 */	blr 
.global fpcSch_JudgeByID
fpcSch_JudgeByID:
/* 80023590 000204D0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80023594 000204D4  80 04 00 00 */	lwz r0, 0(r4)
/* 80023598 000204D8  7C 05 00 40 */	cmplw r5, r0
/* 8002359C 000204DC  4D 82 00 20 */	beqlr 
/* 800235A0 000204E0  38 60 00 00 */	li r3, 0
/* 800235A4 000204E4  4E 80 00 20 */	blr 

