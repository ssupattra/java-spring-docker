<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Events</h4>
                  <p class="card-category"> Here is a subtitle for this table</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                        <th>
                          ID
                        </th>
                        <th>
                          Title
                        </th>
                        <th>
                          Description
                        </th>
                        <th>
                          Date
                        </th>
                        <th>
                          Location
                        </th>
                        
			<th></th>
                      </thead>
                      <tbody>
                      <c:forEach var="event" items="${EventListWrapper.events}">
                        <tr>
                          <td>
                            ${event.getId()}
                          </td>
                          <td>
                            ${event.getTitle()}
                          </td>
                          <td>
                            ${event.getBody()}
                          </td>
                          <td>
                            ${event.getEventDateString()}
                          </td>
                          <td>
                            ${event.getAddress().toString()}
                          </td>
<td class="td-actions text-right">
                              <button onclick="location.href='/getEvent/${event.getId()}'" type="button"  class="btn btn-primary btn-link btn-sm">
                                <i class="material-icons">edit</i>
                              </button>
                              
                            </td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                   <div><button type="button" onclick="window.location.href = '/createEvent';" class="btn btn-primary">Add Event</button></div>
                </div>
              </div>
            </div>
            
          </div>
        </div>
       
      </div>