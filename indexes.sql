use Sunlight_Festival;

show index from act;

show index from festival;

show index from crew;

create index festivalind on festival(festivalId);

create index crewind on crew(crewMemberId desc);

show index from festival;

show index from crew;

show index from act;
